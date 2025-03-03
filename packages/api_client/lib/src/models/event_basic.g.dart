// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_basic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventBasicDto _$EventBasicDtoFromJson(Map<String, dynamic> json) =>
    EventBasicDto(
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

Map<String, dynamic> _$EventBasicDtoToJson(EventBasicDto instance) =>
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
    };

EventInfoURLDto _$EventInfoURLDtoFromJson(Map<String, dynamic> json) =>
    EventInfoURLDto(
      priority: (json['priority'] as num).toInt(),
      url: json['url'] as String,
      source: json['source'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      featureImage: json['feature_image'] as String?,
      type: json['type'] == null
          ? null
          : EventInfoURLTypeDto.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventInfoURLDtoToJson(EventInfoURLDto instance) =>
    <String, dynamic>{
      'priority': instance.priority,
      'source': instance.source,
      'title': instance.title,
      'description': instance.description,
      'feature_image': instance.featureImage,
      'url': instance.url,
      'type': instance.type,
    };

EventInfoURLTypeDto _$EventInfoURLTypeDtoFromJson(Map<String, dynamic> json) =>
    EventInfoURLTypeDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$EventInfoURLTypeDtoToJson(
        EventInfoURLTypeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

EventTypeDto _$EventTypeDtoFromJson(Map<String, dynamic> json) => EventTypeDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$EventTypeDtoToJson(EventTypeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

DatePrecisionDto _$DatePrecisionDtoFromJson(Map<String, dynamic> json) =>
    DatePrecisionDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      abbrev: json['abbrev'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$DatePrecisionDtoToJson(DatePrecisionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abbrev': instance.abbrev,
      'description': instance.description,
    };
