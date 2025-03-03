import 'package:json_annotation/json_annotation.dart';

part 'agency.g.dart';

@JsonSerializable()
class AgencyMiniDto {
  AgencyMiniDto({
    required this.responseMode,
    required this.id,
    required this.url,
    required this.name,
    required this.abbrev,
    required this.type,
  });

  factory AgencyMiniDto.fromJson(Map<String, dynamic> json) =>
      _$AgencyMiniDtoFromJson(json);

  @JsonKey(name: 'response_mode')
  final String responseMode;
  final int id;
  final String url;
  final String name;
  final String abbrev;
  final AgencyTypeDto type;
}

@JsonSerializable()
class AgencyTypeDto {
  AgencyTypeDto({
    required this.id,
    required this.name,
  });

  factory AgencyTypeDto.fromJson(Map<String, dynamic> json) =>
      _$AgencyTypeDtoFromJson(json);

  final int id;
  final String name;
}
