import 'package:misfits/domain/entities/topic.dart';
import 'package:misfits/domain/repositories/topics_repository.dart';
import 'package:misfits/presentation/state/topics_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'topics_notifier.g.dart';

const _defaultTopicId = 0;

const _defaultTopic = Topic(
  id: _defaultTopicId,
  title: 'Default',
  secrets: [
    'Secret 1',
    'Secret 2',
    'Secret 3',
    'Secret 4',
    'Secret 5',
    'Secret 6',
    'Secret 7',
    'Secret 8',
    'Secret 9',
    'Secret 10',
  ],
);

@Riverpod(keepAlive: true)
class TopicsNotifier extends _$TopicsNotifier {
  late final _repo = ref.watch(topicsRepositoryProvider);

  @override
  TopicsState build() {
    listenSelf((prev, next) {
      if (prev?.topics != next.topics) {
        _repo.saveTopics(next.topics);
      }
      if (prev?.activeTopicId != next.activeTopicId) {
        _repo.saveActiveTopicId(next.activeTopicId);
      }
    });

    final topics = _repo.getTopics();
    if (topics == null || topics.isEmpty) {
      return const TopicsState(
        activeTopicId: _defaultTopicId,
        topics: [_defaultTopic],
      );
    }

    final activeTopicId = _repo.getActiveTopicId();

    if (activeTopicId == null || !topics.any((t) => t.id == activeTopicId)) {
      return TopicsState(
        activeTopicId: topics.first.id,
        topics: topics,
      );
    }

    return TopicsState(
      activeTopicId: activeTopicId,
      topics: topics,
    );
  }

  void addTopic(Topic topic) {
    state = state.copyWith(
      topics: state.topics + [topic],
    );
  }

  void editTopic(Topic topic) {
    state = state.copyWith(
      topics: state.topics
          .map((other) => other.id == topic.id ? topic : other)
          .toList(),
    );
  }

  void removeTopic(Topic topic) {
    state = state.copyWith(
      topics: state.topics.where((t) => t.id != topic.id).toList(),
    );
  }

  void setActiveTopic(int topicId) {
    state = state.copyWith(
      activeTopicId: topicId,
    );
  }

  String? validateTopicTitle(int? topicId, String? title) {
    title = title?.trim();
    if (title == null || title.isEmpty) {
      return 'Required';
    }

    if (state.topics
        .where((t) => t.id != topicId && t.title == title)
        .isNotEmpty) {
      return 'Already used';
    }
    return null;
  }

  String? validateTopicSecret(int? topicId, String? secret) {
    secret = secret?.trim();
    if (secret == null || secret.isEmpty) {
      return 'Required';
    }

    final topicSecrets = state.topics
        .firstWhere((t) => t.id == topicId)
        .secrets;

    if (topicSecrets.contains(secret)) {
      return 'Already used';
    }

    return null;
  }
}
