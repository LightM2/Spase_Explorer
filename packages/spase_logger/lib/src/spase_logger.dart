import 'package:spase_logger/spase_logger.dart';

enum SpaseFlavor { bloc, riverpod }

SpaseLogger get spaseLogger => SpaseLogger.instance;

abstract class SpaseLogger {
  factory SpaseLogger() {
    assert(
      _instance != null,
      'Use newInstance() to create a logger instance with a proper flavor.',
    );

    return _instance!;
  }

  static SpaseLogger get instance {
    assert(
      _instance != null,
      'Use newInstance() to create a logger instance with a proper flavor.',
    );

    return _instance!;
  }

  static SpaseLogger? _instance;

  static SpaseLogger newInstance(SpaseFlavor flavor) {
    _instance ??= _createFromFlavor(flavor);
    return _instance!;
  }

  static SpaseLogger _createFromFlavor(SpaseFlavor flavor) {
    switch (flavor) {
      case SpaseFlavor.bloc:
        return LoggerBloc();
      case SpaseFlavor.riverpod:
        return LoggerRiverpod();
    }
  }

  void v(dynamic message, [dynamic error, StackTrace? stackTrace]);

  void d(dynamic message, [dynamic error, StackTrace? stackTrace]);

  void i(dynamic message, [dynamic error, StackTrace? stackTrace]);

  void w(dynamic message, [dynamic error, StackTrace? stackTrace]);

  void e(dynamic message, [dynamic error, StackTrace? stackTrace]);

  void fatal(dynamic message, [dynamic error, StackTrace? stackTrace]);
}
