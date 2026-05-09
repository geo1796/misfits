// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Config _$ConfigFromJson(Map<String, dynamic> json) => _Config(
  settings: Settings.fromJson(json['settings'] as Map<String, dynamic>),
  players: (json['players'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$ConfigToJson(_Config instance) => <String, dynamic>{
  'settings': instance.settings,
  'players': instance.players,
};
