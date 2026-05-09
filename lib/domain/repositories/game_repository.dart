import 'package:misfits/domain/entities/game.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_repository.g.dart';

@Riverpod(keepAlive: true)
GameRepository gameRepository(Ref ref) =>
    throw StateError('provider for GameRepository is not set');

abstract class GameRepository {
  Game? getGame();
  Future<void> saveGame(Game? game);

  String? getPreviousSecret();
  Future<void> savePreviousSecret(String? secret);
}
