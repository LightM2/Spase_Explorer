// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageDto _$ImageDtoFromJson(Map<String, dynamic> json) => ImageDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      imageUrl: json['image_url'] as String,
      thumbnailUrl: json['thumbnail_url'] as String,
      singleUse: json['single_use'] as bool,
      credit: json['credit'] as String?,
    );

Map<String, dynamic> _$ImageDtoToJson(ImageDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'thumbnail_url': instance.thumbnailUrl,
      'credit': instance.credit,
      'single_use': instance.singleUse,
    };
