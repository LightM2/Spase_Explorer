// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_normal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventNormalDto _$EventNormalDtoFromJson(Map<String, dynamic> json) =>
    EventNormalDto(
      id: (json['id'] as num).toInt(),
      url: json['url'] as String,
      name: json['name'] as String,
      infoUrls: (json['info_urls'] as List<dynamic>)
          .map((e) => EventInfoURLDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      slug: json['slug'] as String,
      type: EventTypeDto.fromJson(json['type'] as Map<String, dynamic>),
      description: json['description'] as String,
      webcastLive: json['webcast_live'] as bool,
      responseMode: json['response_mode'] as String,
      updates: (json['updates'] as List<dynamic>)
          .map((e) => EventUpdateDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastUpdated: DateTime.parse(json['last_updated'] as String),
      image: json['image'] == null
          ? null
          : ImageDto.fromJson(json['image'] as Map<String, dynamic>),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      location: json['location'] as String?,
      datePrecision: json['date_precision'] == null
          ? null
          : DatePrecisionDto.fromJson(
              json['date_precision'] as Map<String, dynamic>),
      duration: json['duration'] as String?,
    );

Map<String, dynamic> _$EventNormalDtoToJson(EventNormalDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'info_urls': instance.infoUrls,
      'image': instance.image,
      'date': instance.date?.toIso8601String(),
      'slug': instance.slug,
      'type': instance.type,
      'description': instance.description,
      'webcast_live': instance.webcastLive,
      'location': instance.location,
      'date_precision': instance.datePrecision,
      'response_mode': instance.responseMode,
      'duration': instance.duration,
      'updates': instance.updates,
      'last_updated': instance.lastUpdated.toIso8601String(),
    };

EventUpdateDto _$EventUpdateDtoFromJson(Map<String, dynamic> json) =>
    EventUpdateDto(
      id: (json['id'] as num).toInt(),
      profileImage: json['profile_image'] as String?,
      comment: json['comment'] as String?,
      infoUrl: json['info_url'] as String?,
      createdBy: json['created_by'] as String?,
      createdOn: DateTime.parse(json['created_on'] as String),
    );

Map<String, dynamic> _$EventUpdateDtoToJson(EventUpdateDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile_image': instance.profileImage,
      'comment': instance.comment,
      'info_url': instance.infoUrl,
      'created_by': instance.createdBy,
      'created_on': instance.createdOn.toIso8601String(),
    };
