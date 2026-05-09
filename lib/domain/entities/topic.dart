import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic.freezed.dart';
part 'topic.g.dart';

@freezed
sealed class Topic with _$Topic {
  const factory Topic({
    required int id,
    required String title,
    required List<String> secrets,
  }) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) =>
      _$TopicFromJson(json);
}
