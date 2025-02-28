import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'news_api_client.g.dart';

@RestApi()
abstract class NewsApiClient {
  factory NewsApiClient(Dio dio) = _NewsApiClient;
}
