import 'package:api_client/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'launch_basic.g.dart';

@JsonSerializable()
class LaunchBasicDto {
  LaunchBasicDto({
    required this.id,
    required this.url,
    required this.name,
    required this.responseMode,
    required this.slug,
    required this.lastUpdated,
    required this.net,
    required this.windowEnd,
    required this.windowStart,
    this.launchDesignator,
    this.status,
    this.netPrecision,
    this.image,
    this.infographic,
  });

  factory LaunchBasicDto.fromJson(Map<String, dynamic> json) =>
      _$LaunchBasicDtoFromJson(json);

  final String id;
  final String url;
  final String name;
  @JsonKey(name: 'response_mode')
  final String responseMode;
  final String slug;
  @JsonKey(name: 'launch_designator')
  final String? launchDesignator;
  final LaunchStatusDto? status;
  @JsonKey(name: 'last_updated')
  final DateTime lastUpdated;
  final DateTime net;
  @JsonKey(name: 'net_precision')
  final LaunchNetPrecisionDto? netPrecision;
  @JsonKey(name: 'window_end')
  final DateTime windowEnd;
  @JsonKey(name: 'window_start')
  final DateTime windowStart;
  final ImageDto? image;
  final String? infographic;
}

@JsonSerializable()
class LaunchStatusDto {
  LaunchStatusDto({
    required this.id,
    required this.name,
    required this.abbrev,
    required this.description,
  });

  factory LaunchStatusDto.fromJson(Map<String, dynamic> json) =>
      _$LaunchStatusDtoFromJson(json);

  final int id;
  final String name;
  final String abbrev;
  final String description;
}

@JsonSerializable()
class LaunchNetPrecisionDto {
  LaunchNetPrecisionDto({
    required this.id,
    required this.name,
    required this.abbrev,
    required this.description,
  });

  factory LaunchNetPrecisionDto.fromJson(Map<String, dynamic> json) =>
      _$LaunchNetPrecisionDtoFromJson(json);

  final int id;
  final String name;
  final String abbrev;
  final String description;
}
