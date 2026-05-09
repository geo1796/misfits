import 'package:flutter/foundation.dart';

final class Logger {
  const Logger._();

  static void debug(String message) {
    if (kDebugMode) {
      debugPrint(message);
    }
  }
}
