import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misfits/domain/entities/topic.dart';

part 'topics_state.freezed.dart';
part 'topics_state.g.dart';

@freezed
sealed class TopicsState with _$TopicsState {
  const TopicsState._();

  const factory TopicsState({
    required int activeTopicId,
    required List<Topic> topics,
  }) = _TopicsState;

  Topic get activeTopic => topics.firstWhere((t) => t.id == activeTopicId);

  factory TopicsState.fromJson(Map<String, dynamic> json) =>
      _$TopicsStateFromJson(json);
}
