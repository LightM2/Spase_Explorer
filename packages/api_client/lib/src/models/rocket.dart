import 'package:json_annotation/json_annotation.dart';

part 'rocket.g.dart';

@JsonSerializable()
class RocketDto {
  RocketDto({
    required this.id,
    required this.configuration,
  });

  factory RocketDto.fromJson(Map<String, dynamic> json) =>
      _$RocketDtoFromJson(json);

  final int id;
  final LauncherConfigListDto configuration;
}

@JsonSerializable()
class LauncherConfigListDto {
  LauncherConfigListDto({
    required this.responseMode,
    required this.id,
    required this.url,
    required this.name,
    required this.fullNames,
    required this.variant,
  });

  factory LauncherConfigListDto.fromJson(Map<String, dynamic> json) =>
      _$LauncherConfigListDtoFromJson(json);

  @JsonKey(name: 'response_mode')
  final String responseMode;
  final int id;
  final String url;
  final String name;
  @JsonKey(name: 'full_names')
  final String fullNames;
  final String variant;
}
