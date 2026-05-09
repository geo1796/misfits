import 'package:misfits/domain/entities/config.dart';
import 'package:misfits/domain/entities/settings.dart';
import 'package:misfits/domain/repositories/config_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'config_notifier.g.dart';

const defaultPlayers = <String>[
  'Maelle',
  'Verso',
  'Gustave',
  'Lune',
  'Sciel',
  'Monoco',
];

const _defaultConfig = Config(
  settings: Settings(
    fixedMisfits: 2,
    enableCoop: false,
    randomMisfits: false,
    minMisfits: 1,
    maxMisfits: 3,
    enablePrank: false,
    prankProbability: 25,
  ),
  players: defaultPlayers,
);

@Riverpod(keepAlive: true)
class ConfigNotifier extends _$ConfigNotifier {
  late final _repo = ref.watch(configRepositoryProvider);

  @override
  Config build() {
    listenSelf((prev, next) {
      if (prev != next) {
        _repo.saveConfig(next);
      }
    });
    return _repo.getConfig() ?? _defaultConfig;
  }

  void toggleCoop() {
    final newConfig = state.copyWith(
      settings: state.settings.copyWith(
        enableCoop: !state.settings.enableCoop,
      ),
    );

    state = newConfig;
  }

  void toggleRandomMisfits() {
    final newConfig = state.copyWith(
      settings: state.settings.copyWith(
        randomMisfits: !state.settings.randomMisfits,
      ),
    );

    state = newConfig;
  }

  void togglePrank() {
    final newConfig = state.copyWith(
      settings: state.settings.copyWith(
        enablePrank: !state.settings.enablePrank,
      ),
    );

    state = newConfig;
  }

  void setPrankProbability(int probability) {
    if (probability < 5 || probability > 95) {
      throw ArgumentError('Probability must be between 5 and 95');
    }

    final newConfig = state.copyWith(
      settings: state.settings.copyWith(
        prankProbability: probability,
      ),
    );

    state = newConfig;
  }

  void decreaseFixedMisfits() {
    if (state.settings.fixedMisfits == 1) return;

    final newConfig = state.copyWith(
      settings: state.settings.copyWith(
        fixedMisfits: state.settings.fixedMisfits - 1,
      ),
    );

    state = newConfig;
  }

  void increaseFixedMisfits() {
    if (state.settings.fixedMisfits == _computeMisfitsLimit(state)) {
      return;
    }

    final newConfig = state.copyWith(
      settings: state.settings.copyWith(
        fixedMisfits: state.settings.fixedMisfits + 1,
      ),
    );

    state = newConfig;
  }

  void decreaseMinMisfits() {
    if (state.settings.minMisfits == 0) return;

    final newConfig = state.copyWith(
      settings: state.settings.copyWith(
        minMisfits: state.settings.minMisfits - 1,
      ),
    );

    state = newConfig;
  }

  void increaseMinMisfits() {
    if (state.settings.minMisfits + 1 == state.settings.maxMisfits) {
      if (state.settings.maxMisfits == _computeMisfitsLimit(state)) {
        return;
      }
      increaseMaxMisfits();
    }

    final newConfig = state.copyWith(
      settings: state.settings.copyWith(
        minMisfits: state.settings.minMisfits + 1,
      ),
    );

    state = newConfig;
  }

  void decreaseMaxMisfits() {
    if (state.settings.maxMisfits - 1 == state.settings.minMisfits) {
      if (state.settings.minMisfits == 0) return;
      decreaseMinMisfits();
    }

    final newConfig = state.copyWith(
      settings: state.settings.copyWith(
        maxMisfits: state.settings.maxMisfits - 1,
      ),
    );

    state = newConfig;
  }

  void increaseMaxMisfits() {
    if (state.settings.maxMisfits == _computeMisfitsLimit(state)) {
      return;
    }

    final newConfig = state.copyWith(
      settings: state.settings.copyWith(
        maxMisfits: state.settings.maxMisfits + 1,
      ),
    );

    state = newConfig;
  }

  void removePlayer(String player) {
    final players = [...state.players];
    players.removeWhere((p) => p == player);

    Config config = state.copyWith(players: players);
    final misfitLimits = _computeMisfitsLimit(config);

    if (config.settings.maxMisfits > misfitLimits) {
      config = config.copyWith(
        settings: config.settings.copyWith(maxMisfits: misfitLimits),
      );
    }
    if (config.settings.fixedMisfits > misfitLimits) {
      config = config.copyWith(
        settings: config.settings.copyWith(fixedMisfits: misfitLimits),
      );
    }
    if (config.settings.minMisfits >= config.settings.maxMisfits) {
      config = config.copyWith(
        settings: config.settings.copyWith(
          minMisfits: config.settings.maxMisfits - 1,
        ),
      );
    }

    state = config;
  }

  void addPlayer(String player) {
    state = state.copyWith(players: [...state.players, player]);
  }

  void editPlayer(int index, String player) {
    final players = [...state.players];
    players[index] = player;
    state = state.copyWith(players: players);
  }

  String? validatePlayer(String? player) {
    player = player?.trim();
    if (player == null || player.isEmpty) {
      return 'Required';
    }
    if (state.players.contains(player)) {
      return 'Already used';
    }
    return null;
  }

  int _computeMisfitsLimit(Config config) {
    final playerCount = config.players.length;
    return (playerCount / 2).floor();
  }
}
