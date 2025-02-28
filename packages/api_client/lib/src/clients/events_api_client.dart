import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'events_api_client.g.dart';

@RestApi()
abstract class EventsApiClient {
  factory EventsApiClient(Dio dio) = _EventsApiClient;
}
