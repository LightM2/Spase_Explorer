import 'package:api_client/src/models/models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'news_api_client.g.dart';

@RestApi()
abstract class NewsApiClient {
  factory NewsApiClient(Dio dio) = _NewsApiClient;

  @GET('/v4/articles')
  Future<ArticlesDto> getArticles();

  @GET('/v4/articles/{id}')
  Future<ArticlesDto> getArticle(@Path('id') int id);
}
