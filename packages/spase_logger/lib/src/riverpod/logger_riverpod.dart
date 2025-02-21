import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:spase_logger/spase_logger.dart';

class LoggerRiverpod implements SpaseLogger {
  final Logger _logger = Logger(
    filter: DevelopmentFilter(),
    printer: PrettyPrinter(
      dateTimeFormat: DateTimeFormat.dateAndTime,
      colors: false,
    ),
  );

  @override
  void d(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.d('Riverpod: $message', error: error, stackTrace: stackTrace);
  }

  @override
  void e(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e('Riverpod: $message', error: error, stackTrace: stackTrace);
    if (!kReleaseMode) return;
  }

  @override
  void fatal(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e(
      'Riverpod: Fatal($message): ',
      error: error,
      stackTrace: stackTrace,
    );
    if (!kReleaseMode) return;
  }

  @override
  void i(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.i('Riverpod: $message', error: error, stackTrace: stackTrace);
  }

  @override
  void v(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.t('Riverpod: $message', error: error, stackTrace: stackTrace);
  }

  @override
  void w(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.w('Riverpod: $message', error: error, stackTrace: stackTrace);
    if (!kReleaseMode) return;
  }
}
