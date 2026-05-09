import 'package:misfits/domain/entities/topic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'topics_repository.g.dart';

@Riverpod(keepAlive: true)
TopicsRepository topicsRepository(Ref ref) =>
    throw StateError('provider for TopicsRepository is not set');

abstract class TopicsRepository {
  List<Topic>? getTopics();
  Future<void> saveTopics(List<Topic> topics);

  int? getActiveTopicId();
  Future<void> saveActiveTopicId(int topicId);
}
