// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RocketDto _$RocketDtoFromJson(Map<String, dynamic> json) => RocketDto(
      id: (json['id'] as num).toInt(),
      configuration: LauncherConfigListDto.fromJson(
          json['configuration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RocketDtoToJson(RocketDto instance) => <String, dynamic>{
      'id': instance.id,
      'configuration': instance.configuration,
    };

LauncherConfigListDto _$LauncherConfigListDtoFromJson(
        Map<String, dynamic> json) =>
    LauncherConfigListDto(
      responseMode: json['response_mode'] as String,
      id: (json['id'] as num).toInt(),
      url: json['url'] as String,
      name: json['name'] as String,
      fullNames: json['full_names'] as String,
      variant: json['variant'] as String,
    );

Map<String, dynamic> _$LauncherConfigListDtoToJson(
        LauncherConfigListDto instance) =>
    <String, dynamic>{
      'response_mode': instance.responseMode,
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'full_names': instance.fullNames,
      'variant': instance.variant,
    };
