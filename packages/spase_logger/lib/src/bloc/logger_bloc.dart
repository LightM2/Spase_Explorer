import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:spase_logger/spase_logger.dart';

class LoggerBloc implements SpaseLogger {
  final Logger _logger = Logger(
    filter: DevelopmentFilter(),
    printer: PrettyPrinter(
      dateTimeFormat: DateTimeFormat.dateAndTime,
      colors: false,
    ),
  );

  @override
  void d(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.d('Bloc: $message', error: error, stackTrace: stackTrace);
  }

  @override
  void e(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e('Bloc: $message', error: error, stackTrace: stackTrace);
    if (!kReleaseMode) return;
  }

  @override
  void fatal(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e('Bloc: Fatal($message): ', error: error, stackTrace: stackTrace);
    if (!kReleaseMode) return;
  }

  @override
  void i(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.i('Bloc: $message', error: error, stackTrace: stackTrace);
  }

  @override
  void v(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.t('Bloc: $message', error: error, stackTrace: stackTrace);
  }

  @override
  void w(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.w('Bloc: $message', error: error, stackTrace: stackTrace);
    if (!kReleaseMode) return;
  }
}
