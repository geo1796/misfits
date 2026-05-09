// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topics_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopicsState _$TopicsStateFromJson(Map<String, dynamic> json) => _TopicsState(
  activeTopicId: (json['activeTopicId'] as num).toInt(),
  topics: (json['topics'] as List<dynamic>)
      .map((e) => Topic.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TopicsStateToJson(_TopicsState instance) =>
    <String, dynamic>{
      'activeTopicId': instance.activeTopicId,
      'topics': instance.topics,
    };
