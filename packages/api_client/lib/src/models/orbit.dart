import 'package:json_annotation/json_annotation.dart';

part 'orbit.g.dart';

@JsonSerializable()
class OrbitDto {
  OrbitDto({
    required this.id,
    required this.name,
    required this.abbrev,
    required this.celestialBody,
  });

  factory OrbitDto.fromJson(Map<String, dynamic> json) =>
      _$OrbitDtoFromJson(json);

  final int id;
  final String name;
  final String abbrev;
  @JsonKey(name: 'celestial_body')
  final CelestialBodyMiniDto celestialBody;
}

@JsonSerializable()
class CelestialBodyMiniDto {
  CelestialBodyMiniDto({
    required this.responseMode,
    required this.id,
    required this.name,
  });

  factory CelestialBodyMiniDto.fromJson(Map<String, dynamic> json) =>
      _$CelestialBodyMiniDtoFromJson(json);

  @JsonKey(name: 'response_mode')
  final String responseMode;
  final int id;
  final String name;
}
