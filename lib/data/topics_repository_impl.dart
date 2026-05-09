import 'dart:convert';

import 'package:misfits/domain/entities/topic.dart';
import 'package:misfits/domain/repositories/topics_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class _PrefKeys {
  static const topics = 'topics';
  static const activeTopicId = 'activeTopicId';
}

final class TopicsRepositoryImpl implements TopicsRepository {
  final SharedPreferencesWithCache _prefs;

  TopicsRepositoryImpl(this._prefs);

  @override
  List<Topic>? getTopics() {
    try {
      final topicsJson = _prefs.getStringList(_PrefKeys.topics) ?? [];
      return topicsJson
          .map(
            (json) => Topic.fromJson(
              Map<String, dynamic>.from(
                jsonDecode(json) as Map,
              ),
            ),
          )
          .toList();
    } catch (e) {
      //TODO log error
      return null;
    }
  }

  @override
  Future<void> saveTopics(List<Topic> topics) async {
    try {
      final topicsJson = topics.map((t) => jsonEncode(t.toJson())).toList();
      await _prefs.setStringList(_PrefKeys.topics, topicsJson);
    } catch (e) {
      //TODO log error
    }
  }

  @override
  int? getActiveTopicId() {
    try {
      return _prefs.getInt(_PrefKeys.activeTopicId);
    } catch (e) {
      //TODO log error
      return null;
    }
  }

  @override
  Future<void> saveActiveTopicId(int topicId) async {
    try {
      await _prefs.setInt(_PrefKeys.activeTopicId, topicId);
    } catch (e) {
      //TODO log error
    }
  }
}
