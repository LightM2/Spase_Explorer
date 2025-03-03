// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PadDto _$PadDtoFromJson(Map<String, dynamic> json) => PadDto(
      id: (json['id'] as num).toInt(),
      url: json['url'] as String,
      active: json['active'] as bool,
      name: json['name'] as String,
      image: json['image'] == null
          ? null
          : ImageDto.fromJson(json['image'] as Map<String, dynamic>),
      description: json['description'] as String?,
      infoUrl: json['info_url'] as String?,
      wikiUrl: json['wiki_url'] as String?,
      mapUrl: json['map_url'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      country: json['country'] == null
          ? null
          : CountryDto.fromJson(json['country'] as Map<String, dynamic>),
      mapImage: json['map_image'] as String?,
      totalLaunchCount: (json['total_launch_count'] as num?)?.toInt(),
      orbitalLaunchAttemptCount:
          (json['orbital_launch_attempt_count'] as num?)?.toInt(),
      fastestTurnaround: json['fastest_turnaround'] as String?,
      location: json['location'] == null
          ? null
          : LocationDto.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PadDtoToJson(PadDto instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'active': instance.active,
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'info_url': instance.infoUrl,
      'wiki_url': instance.wikiUrl,
      'map_url': instance.mapUrl,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'country': instance.country,
      'map_image': instance.mapImage,
      'total_launch_count': instance.totalLaunchCount,
      'orbital_launch_attempt_count': instance.orbitalLaunchAttemptCount,
      'fastest_turnaround': instance.fastestTurnaround,
      'location': instance.location,
    };
