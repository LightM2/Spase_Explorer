import 'package:api_client/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_normal.g.dart';

@JsonSerializable()
class EventNormalDto {
  EventNormalDto({
    required this.id,
    required this.url,
    required this.name,
    required this.infoUrls,
    required this.slug,
    required this.type,
    required this.description,
    required this.webcastLive,
    required this.responseMode,
    required this.updates,
    required this.lastUpdated,
    this.image,
    this.date,
    this.location,
    this.datePrecision,
    this.duration,
  });

  factory EventNormalDto.fromJson(Map<String, dynamic> json) =>
      _$EventNormalDtoFromJson(json);

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
  final List<EventUpdateDto> updates;
  @JsonKey(name: 'last_updated')
  final DateTime lastUpdated;
}

@JsonSerializable()
class EventUpdateDto {
  EventUpdateDto({
    required this.id,
    this.profileImage,
    this.comment,
    this.infoUrl,
    this.createdBy,
    required this.createdOn,
  });

  factory EventUpdateDto.fromJson(Map<String, dynamic> json) =>
      _$EventUpdateDtoFromJson(json);

  final int id;
  @JsonKey(name: 'profile_image')
  final String? profileImage;
  final String? comment;
  @JsonKey(name: 'info_url')
  final String? infoUrl;
  @JsonKey(name: 'created_by')
  final String? createdBy;
  @JsonKey(name: 'created_on')
  final DateTime createdOn;
}
