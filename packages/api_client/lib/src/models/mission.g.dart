// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MissionDto _$MissionDtoFromJson(Map<String, dynamic> json) => MissionDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
      orbit: OrbitDto.fromJson(json['orbit'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : ImageDto.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MissionDtoToJson(MissionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'description': instance.description,
      'image': instance.image,
      'orbit': instance.orbit,
    };
