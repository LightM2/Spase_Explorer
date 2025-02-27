import 'package:dio/dio.dart';

class SpaseRequestException implements Exception {
  const SpaseRequestException(this.error);

  final Object error;

  @override
  String toString() {
    if (error is DioException) {
      final dioException = error as DioException;
      final response = dioException.response;
      return '''
        Network error [${response?.statusCode}]: ${response?.statusMessage}
      ''';
    } else {
      return '$error';
    }
  }
}

class UserExpiredException extends SpaseRequestException {
  UserExpiredException(super.error);
}
