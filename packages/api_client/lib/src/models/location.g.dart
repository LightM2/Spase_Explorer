// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryDto _$CountryDtoFromJson(Map<String, dynamic> json) => CountryDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      alpha2Code: json['alpha_2_code'] as String,
      alpha3Code: json['alpha_3_code'] as String,
      nationalityName: json['nationality_name'] as String,
      nationalityNameComposed: json['nationality_name_composed'] as String,
    );

Map<String, dynamic> _$CountryDtoToJson(CountryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'alpha_2_code': instance.alpha2Code,
      'alpha_3_code': instance.alpha3Code,
      'nationality_name': instance.nationalityName,
      'nationality_name_composed': instance.nationalityNameComposed,
    };

LocationDto _$LocationDtoFromJson(Map<String, dynamic> json) => LocationDto(
      responseMode: json['response_mode'] as String,
      id: (json['id'] as num).toInt(),
      url: json['url'] as String,
      name: json['name'] as String,
      active: json['active'] as bool,
      country: json['country'] == null
          ? null
          : CountryDto.fromJson(json['country'] as Map<String, dynamic>),
      description: json['description'] as String?,
      image: json['image'] == null
          ? null
          : ImageDto.fromJson(json['image'] as Map<String, dynamic>),
      mapImage: json['map_image'] as String?,
      longitude: (json['longitude'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      timezoneName: json['timezone_name'] as String?,
      totalLaunchCount: (json['total_launch_count'] as num?)?.toInt(),
      totalLandingCount: (json['total_landing_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LocationDtoToJson(LocationDto instance) =>
    <String, dynamic>{
      'response_mode': instance.responseMode,
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'active': instance.active,
      'country': instance.country,
      'description': instance.description,
      'image': instance.image,
      'map_image': instance.mapImage,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'timezone_name': instance.timezoneName,
      'total_launch_count': instance.totalLaunchCount,
      'total_landing_count': instance.totalLandingCount,
    };
