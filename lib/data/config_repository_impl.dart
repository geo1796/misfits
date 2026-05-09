import 'dart:convert';

import 'package:misfits/domain/entities/config.dart';
import 'package:misfits/domain/repositories/config_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class _PrefKeys {
  static const config = 'config';
}

final class ConfigRepositoryImpl implements ConfigRepository {
  final SharedPreferencesWithCache _prefs;

  ConfigRepositoryImpl(this._prefs);

  @override
  Config? getConfig() {
    try {
      final configJson = _prefs.getString(_PrefKeys.config);
      if (configJson == null) return null;
      return Config.fromJson(
        Map<String, dynamic>.from(
          jsonDecode(configJson) as Map,
        ),
      );
    } catch (e) {
      //TODO log error
      return null;
    }
  }

  @override
  Future<void> saveConfig(Config config) async {
    try {
      final configJson = jsonEncode(config.toJson());
      await _prefs.setString(_PrefKeys.config, configJson);
    } catch (e) {
      //TODO log error
    }
  }
}
