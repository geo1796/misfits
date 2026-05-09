import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
sealed class Settings with _$Settings {
  const factory Settings({
    required int fixedMisfits,
    required bool enableCoop,
    required bool randomMisfits,
    required int minMisfits,
    required int maxMisfits,
    required bool enablePrank,
    required int prankProbability,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
