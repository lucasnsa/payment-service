library logger;

import 'package:groveman/groveman.dart';

// ignore: non_constant_identifier_names
final Logger = _Logger();

class _Logger {

  void initialize() {
    Groveman.plantTree(DebugTree());
  }

  void debug(
    String message, {
    String? tag,
    Map<String, dynamic>? extra,
    Object? error,
    StackTrace? stackTrace,
  }) {
    Groveman.debug(message,
        tag: tag, extra: extra, error: error, stackTrace: stackTrace);
  }
}
