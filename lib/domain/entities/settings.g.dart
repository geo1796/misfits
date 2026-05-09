// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Settings _$SettingsFromJson(Map<String, dynamic> json) => _Settings(
  fixedMisfits: (json['fixedMisfits'] as num).toInt(),
  enableCoop: json['enableCoop'] as bool,
  randomMisfits: json['randomMisfits'] as bool,
  minMisfits: (json['minMisfits'] as num).toInt(),
  maxMisfits: (json['maxMisfits'] as num).toInt(),
  enablePrank: json['enablePrank'] as bool,
  prankProbability: (json['prankProbability'] as num).toInt(),
);

Map<String, dynamic> _$SettingsToJson(_Settings instance) => <String, dynamic>{
  'fixedMisfits': instance.fixedMisfits,
  'enableCoop': instance.enableCoop,
  'randomMisfits': instance.randomMisfits,
  'minMisfits': instance.minMisfits,
  'maxMisfits': instance.maxMisfits,
  'enablePrank': instance.enablePrank,
  'prankProbability': instance.prankProbability,
};
