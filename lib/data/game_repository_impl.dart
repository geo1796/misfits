import 'dart:convert';

import 'package:misfits/domain/entities/game.dart';
import 'package:misfits/domain/repositories/game_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class _PrefKeys {
  static const game = 'game';
  static const previousSecret = 'previousSecret';
}

final class GameRepositoryImpl implements GameRepository {
  final SharedPreferencesWithCache _prefs;

  GameRepositoryImpl(this._prefs);

  @override
  Game? getGame() {
    try {
      final gameJson = _prefs.getString(_PrefKeys.game);
      if (gameJson == null) return null;
      return Game.fromJson(
        Map<String, dynamic>.from(
          jsonDecode(gameJson) as Map,
        ),
      );
    } catch (e) {
      //TODO log error
      return null;
    }
  }

  @override
  Future<void> saveGame(Game? game) async {
    try {
      if (game == null) {
        await _prefs.remove(_PrefKeys.game);
        return;
      }
      final gameJson = jsonEncode(game.toJson());
      await _prefs.setString(_PrefKeys.game, gameJson);
    } catch (e) {
      //TODO log error
    }
  }

  @override
  String? getPreviousSecret() {
    try {
      return _prefs.getString(_PrefKeys.previousSecret);
    } catch (e) {
      // TODO log error
      return null;
    }
  }

  @override
  Future<void> savePreviousSecret(String? secret) async {
    try {
      if (secret == null) {
        await _prefs.remove(_PrefKeys.previousSecret);
        return;
      }
      await _prefs.setString(_PrefKeys.previousSecret, secret);
    } catch (e) {
      //TODO log error
    }
  }
}
