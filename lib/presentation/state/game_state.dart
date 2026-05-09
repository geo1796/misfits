import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misfits/domain/entities/game.dart';

part 'game_state.freezed.dart';

@freezed
sealed class GameState with _$GameState {
  const factory GameState.idle() = _Idle;
  const factory GameState.active(Game game) = _Active;
}
