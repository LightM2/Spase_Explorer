// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_normal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchNormalDto _$LaunchNormalDtoFromJson(Map<String, dynamic> json) =>
    LaunchNormalDto(
      id: json['id'] as String,
      url: json['url'] as String,
      name: json['name'] as String,
      responseMode: json['response_mode'] as String,
      slug: json['slug'] as String,
      lastUpdated: DateTime.parse(json['last_updated'] as String),
      net: DateTime.parse(json['net'] as String),
      windowEnd: DateTime.parse(json['window_end'] as String),
      windowStart: DateTime.parse(json['window_start'] as String),
      launchServiceProvider: AgencyMiniDto.fromJson(
          json['launch_service_provider'] as Map<String, dynamic>),
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
      probability: (json['probability'] as num?)?.toInt(),
      weatherConcerns: json['weather_concerns'] as String?,
      failreason: json['failreason'] as String?,
      hashtag: json['hashtag'] as String?,
      rocket: json['rocket'] == null
          ? null
          : RocketDto.fromJson(json['rocket'] as Map<String, dynamic>),
      mission: json['mission'] == null
          ? null
          : MissionDto.fromJson(json['mission'] as Map<String, dynamic>),
      pad: json['pad'] == null
          ? null
          : PadDto.fromJson(json['pad'] as Map<String, dynamic>),
      orbitalLaunchAttemptCount:
          (json['orbital_launch_attempt_count'] as num?)?.toInt(),
      locationLaunchAttemptCount:
          (json['location_launch_attempt_count'] as num?)?.toInt(),
      padLaunchAttemptCount:
          (json['pad_launch_attempt_count'] as num?)?.toInt(),
      agencyLaunchAttemptCount:
          (json['agency_launch_attempt_count'] as num?)?.toInt(),
      orbitalLaunchAttemptCountYear:
          (json['orbital_launch_attempt_count_year'] as num?)?.toInt(),
      locationLaunchAttemptCountYear:
          (json['location_launch_attempt_count_year'] as num?)?.toInt(),
      padLaunchAttemptCountYear:
          (json['pad_launch_attempt_count_year'] as num?)?.toInt(),
      agencyLaunchAttemptCountYear:
          (json['agency_launch_attempt_count_year'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LaunchNormalDtoToJson(LaunchNormalDto instance) =>
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
      'probability': instance.probability,
      'weather_concerns': instance.weatherConcerns,
      'failreason': instance.failreason,
      'hashtag': instance.hashtag,
      'launch_service_provider': instance.launchServiceProvider,
      'rocket': instance.rocket,
      'mission': instance.mission,
      'pad': instance.pad,
      'orbital_launch_attempt_count': instance.orbitalLaunchAttemptCount,
      'location_launch_attempt_count': instance.locationLaunchAttemptCount,
      'pad_launch_attempt_count': instance.padLaunchAttemptCount,
      'agency_launch_attempt_count': instance.agencyLaunchAttemptCount,
      'orbital_launch_attempt_count_year':
          instance.orbitalLaunchAttemptCountYear,
      'location_launch_attempt_count_year':
          instance.locationLaunchAttemptCountYear,
      'pad_launch_attempt_count_year': instance.padLaunchAttemptCountYear,
      'agency_launch_attempt_count_year': instance.agencyLaunchAttemptCountYear,
    };
