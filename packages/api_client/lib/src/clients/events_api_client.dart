import 'package:api_client/src/models/models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'events_api_client.g.dart';

@RestApi()
abstract class EventsApiClient {
  factory EventsApiClient(Dio dio) = _EventsApiClient;

  @GET('/2.3.0/events/?mode=list')
  Future<EventsDto> getEvents();

  @GET('/2.3.0/events/{id}/?mode=normal')
  Future<EventNormalDto> getEvent(@Path('id') int id);

  @GET('/2.3.0/launches/?mode=list')
  Future<LaunchesDto> getLaunches();

  @GET('/2.3.0/launches/{id}/?mode=normal')
  Future<LaunchNormalDto> getLaunch(@Path('id') String id);
}
