import 'dart:math';

import 'package:misfits/domain/entities/config.dart';
import 'package:misfits/domain/entities/game.dart';
import 'package:misfits/domain/entities/topic.dart';
import 'package:misfits/domain/repositories/game_repository.dart';
import 'package:misfits/presentation/state/config_notifier.dart';
import 'package:misfits/presentation/state/game_state.dart';
import 'package:misfits/presentation/state/topics_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_notifier.g.dart';

@Riverpod(keepAlive: true)
class GameNotifier extends _$GameNotifier {
  late _Random _random;

  late final _repo = ref.watch(gameRepositoryProvider);

  String? get previousSecret => _repo.getPreviousSecret();

  @override
  GameState build() {
    listenSelf((prev, next) {
      if (prev != next) {
        next.when(
          active: (g) => _repo.saveGame(g),
          idle: () => _repo.saveGame(null),
        );
      }
    });

    final game = _repo.getGame();
    if (game == null) {
      return const GameState.idle();
    }
    return GameState.active(game);
  }

  void endGame() {
    state.whenOrNull(
      active: (g) {
        if (g is RegularGame) {
          _repo.savePreviousSecret(g.secret);
        }
      },
    );
    state = const GameState.idle();
  }

  void startGame() {
    _random = _Random(DateTime.now().millisecondsSinceEpoch);
    final config = ref.read(configProvider);
    final topic = ref.read(topicsProvider).activeTopic;

    final misfitCount = config.settings.randomMisfits
        ? _random.inRange(
            config.settings.minMisfits,
            config.settings.maxMisfits,
          )
        : config.settings.fixedMisfits;

    if (config.settings.enablePrank &&
        _random.inRange(0, 100) <= config.settings.prankProbability) {
      return _startPrankGame(config, topic, misfitCount);
    }

    return _startRegularGame(config, topic, misfitCount);
  }

  void _startRegularGame(
    Config config,
    Topic topic,
    int misfitCount,
  ) {
    final availableSecrets = [...topic.secrets];
    do {
      availableSecrets.shuffle(_random.inner);
    } while (availableSecrets[0] == previousSecret);
    final secret = availableSecrets.first;

    final players = [...config.players]..shuffle(_random.inner);
    final misfits = players.take(misfitCount).toList();

    final game = Game.regular(
      secret: secret,
      misfits: misfits,
      playerChecks: {for (var p in config.players) p: false},
      secretChecks: {for (var s in topic.secrets) s: false},
    );

    state = GameState.active(game);
  }

  void _startPrankGame(
    Config config,
    Topic topic,
    int misfitCount,
  ) {
    Game game = Game.prank(
      playerChecks: {for (var p in config.players) p: false},
      secretChecks: {for (var s in topic.secrets) s: false},
      dummyMisfitsByPlayer: {},
    );

    if (config.settings.enableCoop) {
      final dummyMisfitsByPlayer = <String, List<String>>{};

      for (final p in config.players) {
        final otherPlayers =
            config.players.where((other) => other != p).toList()
              ..shuffle(_random.inner);

        dummyMisfitsByPlayer[p] = [
          p,
          ...otherPlayers.take(misfitCount < 1 ? 0 : misfitCount - 1),
        ];
      }

      game = game.maybeMap(
        prank: (g) => g.copyWith(dummyMisfitsByPlayer: dummyMisfitsByPlayer),
        orElse: () => game,
      );
    }

    state = GameState.active(game);
  }

  void checkPlayer(String player) {
    final game = state.maybeWhen(
      active: (g) => g,
      orElse: () => null,
    );
    if (game == null) {
      throw StateError('No active game');
    }

    final newPlayerChecks = Map<String, bool>.from(game.playerChecks)
      ..[player] = true;

    final newGame = game.copyWith(playerChecks: newPlayerChecks);

    state = GameState.active(newGame);
  }

  bool isMisfit(String player) => state.when(
    idle: () => false,
    active: (g) {
      if (g is RegularGame) {
        return g.misfits.contains(player);
      }
      return true;
    },
  );

  void checkSecret(String secret) {
    final game = state.maybeWhen(active: (g) => g, orElse: () => null);
    if (game == null) throw StateError('No active game');
    final newSecretChecks = Map<String, bool>.from(game.secretChecks)
      ..[secret] = true;
    state = GameState.active(game.copyWith(secretChecks: newSecretChecks));
  }
}

final class _Random {
  final Random inner;

  _Random(int seed) : inner = Random(seed);

  int inRange(int min, int max) {
    return min + inner.nextInt(max - min + 1);
  }
}
