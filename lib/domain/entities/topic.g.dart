// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Topic _$TopicFromJson(Map<String, dynamic> json) => _Topic(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  secrets: (json['secrets'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$TopicToJson(_Topic instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'secrets': instance.secrets,
};
