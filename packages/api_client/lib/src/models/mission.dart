import 'package:api_client/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mission.g.dart';

@JsonSerializable()
class MissionDto {
  MissionDto({
    required this.id,
    required this.name,
    required this.type,
    required this.description,
    required this.orbit,
    this.image,
  });

  factory MissionDto.fromJson(Map<String, dynamic> json) =>
      _$MissionDtoFromJson(json);

  final int id;
  final String name;
  final String type;
  final String description;
  final ImageDto? image;
  final OrbitDto orbit;
}
