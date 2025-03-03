// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgencyMiniDto _$AgencyMiniDtoFromJson(Map<String, dynamic> json) =>
    AgencyMiniDto(
      responseMode: json['response_mode'] as String,
      id: (json['id'] as num).toInt(),
      url: json['url'] as String,
      name: json['name'] as String,
      abbrev: json['abbrev'] as String,
      type: AgencyTypeDto.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AgencyMiniDtoToJson(AgencyMiniDto instance) =>
    <String, dynamic>{
      'response_mode': instance.responseMode,
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'abbrev': instance.abbrev,
      'type': instance.type,
    };

AgencyTypeDto _$AgencyTypeDtoFromJson(Map<String, dynamic> json) =>
    AgencyTypeDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$AgencyTypeDtoToJson(AgencyTypeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
