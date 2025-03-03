import 'package:api_client/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'events.g.dart';

@JsonSerializable()
class EventsDto {
  EventsDto({
    required this.count,
    required this.results,
    this.next,
    this.previous,
  });

  factory EventsDto.fromJson(Map<String, dynamic> json) =>
      _$EventsDtoFromJson(json);

  final int count;
  final String? next;
  final String? previous;
  final List<EventBasicDto> results;
}
