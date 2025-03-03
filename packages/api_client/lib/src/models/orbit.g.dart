// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orbit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrbitDto _$OrbitDtoFromJson(Map<String, dynamic> json) => OrbitDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      abbrev: json['abbrev'] as String,
      celestialBody: CelestialBodyMiniDto.fromJson(
          json['celestial_body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrbitDtoToJson(OrbitDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abbrev': instance.abbrev,
      'celestial_body': instance.celestialBody,
    };

CelestialBodyMiniDto _$CelestialBodyMiniDtoFromJson(
        Map<String, dynamic> json) =>
    CelestialBodyMiniDto(
      responseMode: json['response_mode'] as String,
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$CelestialBodyMiniDtoToJson(
        CelestialBodyMiniDto instance) =>
    <String, dynamic>{
      'response_mode': instance.responseMode,
      'id': instance.id,
      'name': instance.name,
    };
