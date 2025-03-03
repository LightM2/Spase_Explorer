import 'package:api_client/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pad.g.dart';

@JsonSerializable()
class PadDto {
  PadDto({
    required this.id,
    required this.url,
    required this.active,
    required this.name,
    this.image,
    this.description,
    this.infoUrl,
    this.wikiUrl,
    this.mapUrl,
    this.latitude,
    this.longitude,
    this.country,
    this.mapImage,
    this.totalLaunchCount,
    this.orbitalLaunchAttemptCount,
    this.fastestTurnaround,
    this.location,
  });

  factory PadDto.fromJson(Map<String, dynamic> json) => _$PadDtoFromJson(json);

  final int id;
  final String url;
  final bool active;
  final String name;
  final ImageDto? image;
  final String? description;
  @JsonKey(name: 'info_url')
  final String? infoUrl;
  @JsonKey(name: 'wiki_url')
  final String? wikiUrl;
  @JsonKey(name: 'map_url')
  final String? mapUrl;
  final double? latitude;
  final double? longitude;
  final CountryDto? country;
  @JsonKey(name: 'map_image')
  final String? mapImage;
  @JsonKey(name: 'total_launch_count')
  final int? totalLaunchCount;
  @JsonKey(name: 'orbital_launch_attempt_count')
  final int? orbitalLaunchAttemptCount;
  @JsonKey(name: 'fastest_turnaround')
  final String? fastestTurnaround;
  final LocationDto? location;
}
