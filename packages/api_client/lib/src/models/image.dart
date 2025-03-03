import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

@JsonSerializable()
class ImageDto {
  ImageDto({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.thumbnailUrl,
    required this.singleUse,
    this.credit,
  });

  factory ImageDto.fromJson(Map<String, dynamic> json) =>
      _$ImageDtoFromJson(json);

  final int id;
  final String name;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @JsonKey(name: 'thumbnail_url')
  final String thumbnailUrl;
  final String? credit;
  @JsonKey(name: 'single_use')
  final bool singleUse;
}
