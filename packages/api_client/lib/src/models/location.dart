import 'package:api_client/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class CountryDto {
  CountryDto({
    required this.id,
    required this.name,
    required this.alpha2Code,
    required this.alpha3Code,
    required this.nationalityName,
    required this.nationalityNameComposed,
  });

  factory CountryDto.fromJson(Map<String, dynamic> json) =>
      _$CountryDtoFromJson(json);

  final int id;
  final String name;
  @JsonKey(name: 'alpha_2_code')
  final String alpha2Code;
  @JsonKey(name: 'alpha_3_code')
  final String alpha3Code;
  @JsonKey(name: 'nationality_name')
  final String nationalityName;
  @JsonKey(name: 'nationality_name_composed')
  final String nationalityNameComposed;
}

@JsonSerializable()
class LocationDto {
  LocationDto({
    required this.responseMode,
    required this.id,
    required this.url,
    required this.name,
    required this.active,
    this.country,
    this.description,
    this.image,
    this.mapImage,
    this.longitude,
    this.latitude,
    this.timezoneName,
    this.totalLaunchCount,
    this.totalLandingCount,
  });

  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);

  @JsonKey(name: 'response_mode')
  final String responseMode;
  final int id;
  final String url;
  final String name;
  final bool active;
  final CountryDto? country;
  final String? description;
  final ImageDto? image;
  @JsonKey(name: 'map_image')
  final String? mapImage;
  final double? longitude;
  final double? latitude;
  @JsonKey(name: 'timezone_name')
  final String? timezoneName;
  @JsonKey(name: 'total_launch_count')
  final int? totalLaunchCount;
  @JsonKey(name: 'total_landing_count')
  final int? totalLandingCount;
}
