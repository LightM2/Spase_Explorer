// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_basic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchBasicDto _$LaunchBasicDtoFromJson(Map<String, dynamic> json) =>
    LaunchBasicDto(
      id: json['id'] as String,
      url: json['url'] as String,
      name: json['name'] as String,
      responseMode: json['response_mode'] as String,
      slug: json['slug'] as String,
      lastUpdated: DateTime.parse(json['last_updated'] as String),
      net: DateTime.parse(json['net'] as String),
      windowEnd: DateTime.parse(json['window_end'] as String),
      windowStart: DateTime.parse(json['window_start'] as String),
      launchDesignator: json['launch_designator'] as String?,
      status: json['status'] == null
          ? null
          : LaunchStatusDto.fromJson(json['status'] as Map<String, dynamic>),
      netPrecision: json['net_precision'] == null
          ? null
          : LaunchNetPrecisionDto.fromJson(
              json['net_precision'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : ImageDto.fromJson(json['image'] as Map<String, dynamic>),
      infographic: json['infographic'] as String?,
    );

Map<String, dynamic> _$LaunchBasicDtoToJson(LaunchBasicDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'response_mode': instance.responseMode,
      'slug': instance.slug,
      'launch_designator': instance.launchDesignator,
      'status': instance.status,
      'last_updated': instance.lastUpdated.toIso8601String(),
      'net': instance.net.toIso8601String(),
      'net_precision': instance.netPrecision,
      'window_end': instance.windowEnd.toIso8601String(),
      'window_start': instance.windowStart.toIso8601String(),
      'image': instance.image,
      'infographic': instance.infographic,
    };

LaunchStatusDto _$LaunchStatusDtoFromJson(Map<String, dynamic> json) =>
    LaunchStatusDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      abbrev: json['abbrev'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$LaunchStatusDtoToJson(LaunchStatusDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abbrev': instance.abbrev,
      'description': instance.description,
    };

LaunchNetPrecisionDto _$LaunchNetPrecisionDtoFromJson(
        Map<String, dynamic> json) =>
    LaunchNetPrecisionDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      abbrev: json['abbrev'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$LaunchNetPrecisionDtoToJson(
        LaunchNetPrecisionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abbrev': instance.abbrev,
      'description': instance.description,
    };
