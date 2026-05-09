// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegularGame _$RegularGameFromJson(Map<String, dynamic> json) => RegularGame(
  secret: json['secret'] as String,
  playerChecks: Map<String, bool>.from(json['playerChecks'] as Map),
  secretChecks: Map<String, bool>.from(json['secretChecks'] as Map),
  misfits: (json['misfits'] as List<dynamic>).map((e) => e as String).toList(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$RegularGameToJson(RegularGame instance) =>
    <String, dynamic>{
      'secret': instance.secret,
      'playerChecks': instance.playerChecks,
      'secretChecks': instance.secretChecks,
      'misfits': instance.misfits,
      'runtimeType': instance.$type,
    };

PrankGame _$PrankGameFromJson(Map<String, dynamic> json) => PrankGame(
  playerChecks: Map<String, bool>.from(json['playerChecks'] as Map),
  secretChecks: Map<String, bool>.from(json['secretChecks'] as Map),
  dummyMisfitsByPlayer: (json['dummyMisfitsByPlayer'] as Map<String, dynamic>)
      .map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$PrankGameToJson(PrankGame instance) => <String, dynamic>{
  'playerChecks': instance.playerChecks,
  'secretChecks': instance.secretChecks,
  'dummyMisfitsByPlayer': instance.dummyMisfitsByPlayer,
  'runtimeType': instance.$type,
};
