import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  const DioFactory();

  Dio create() => Dio(_createBaseOptions())
    ..httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        final client = HttpClient();
        return client;
      },
    )
    ..interceptors.addAll([
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        filter: (options, args) => !args.isResponse || !args.hasUint8ListData,
      ),
    ]);

  BaseOptions _createBaseOptions() => BaseOptions(baseUrl: 'url');
}
