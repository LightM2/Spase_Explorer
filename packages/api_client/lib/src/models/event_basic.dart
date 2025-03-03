import 'package:api_client/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_basic.g.dart';

@JsonSerializable()
class EventBasicDto {
  EventBasicDto({
    required this.id,
    required this.url,
    required this.name,
    required this.infoUrls,
    required this.slug,
    required this.type,
    required this.description,
    required this.webcastLive,
    required this.responseMode,
    this.image,
    this.date,
    this.location,
    this.datePrecision,
    this.duration,
  });

  factory EventBasicDto.fromJson(Map<String, dynamic> json) =>
      _$EventBasicDtoFromJson(json);

  final int id;
  final String url;
  final String name;
  @JsonKey(name: 'info_urls')
  final List<EventInfoURLDto> infoUrls;
  final ImageDto? image;
  final DateTime? date;
  final String slug;
  final EventTypeDto type;
  final String description;
  @JsonKey(name: 'webcast_live')
  final bool webcastLive;
  final String? location;
  @JsonKey(name: 'date_precision')
  final DatePrecisionDto? datePrecision;
  @JsonKey(name: 'response_mode')
  final String responseMode;
  final String? duration;
}

@JsonSerializable()
class EventInfoURLDto {
  EventInfoURLDto({
    required this.priority,
    required this.url, this.source,
    this.title,
    this.description,
    this.featureImage,
    this.type,
  });

  factory EventInfoURLDto.fromJson(Map<String, dynamic> json) =>
      _$EventInfoURLDtoFromJson(json);

  final int priority;
  final String? source;
  final String? title;
  final String? description;
  @JsonKey(name: 'feature_image')
  final String? featureImage;
  final String url;
  final EventInfoURLTypeDto? type;
}

@JsonSerializable()
class EventInfoURLTypeDto {
  EventInfoURLTypeDto({
    required this.id,
    required this.name,
  });

  factory EventInfoURLTypeDto.fromJson(Map<String, dynamic> json) =>
      _$EventInfoURLTypeDtoFromJson(json);

  final int id;
  final String name;
}

@JsonSerializable()
class EventTypeDto {
  EventTypeDto({
    required this.id,
    required this.name,
  });

  factory EventTypeDto.fromJson(Map<String, dynamic> json) =>
      _$EventTypeDtoFromJson(json);

  final int id;
  final String name;
}

@JsonSerializable()
class DatePrecisionDto {
  DatePrecisionDto({
    required this.id,
    required this.name,
    required this.abbrev,
    required this.description,
  });

  factory DatePrecisionDto.fromJson(Map<String, dynamic> json) =>
      _$DatePrecisionDtoFromJson(json);

  final int id;
  final String name;
  final String abbrev;
  final String description;
}
