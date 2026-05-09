import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';
part 'game.g.dart';

@freezed
sealed class Game with _$Game {
  const factory Game.regular({
    required String secret,
    required Map<String, bool> playerChecks,
    required Map<String, bool> secretChecks,
    required List<String> misfits,
  }) = RegularGame;
  const factory Game.prank({
    required Map<String, bool> playerChecks,
    required Map<String, bool> secretChecks,
    required Map<String, List<String>> dummyMisfitsByPlayer,
  }) = PrankGame;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}
