import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misfits/domain/entities/settings.dart';

part 'config.freezed.dart';
part 'config.g.dart';

@freezed
sealed class Config with _$Config {
  const factory Config({
    required Settings settings,
    required List<String> players,
  }) = _Config;

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
}
