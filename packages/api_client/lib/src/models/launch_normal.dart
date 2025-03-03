import 'package:api_client/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'launch_normal.g.dart';

@JsonSerializable()
class LaunchNormalDto {
  LaunchNormalDto({
    required this.id,
    required this.url,
    required this.name,
    required this.responseMode,
    required this.slug,
    required this.lastUpdated,
    required this.net,
    required this.windowEnd,
    required this.windowStart,
    required this.launchServiceProvider,
    this.launchDesignator,
    this.status,
    this.netPrecision,
    this.image,
    this.infographic,
    this.probability,
    this.weatherConcerns,
    this.failreason,
    this.hashtag,
    this.rocket,
    this.mission,
    this.pad,
    this.orbitalLaunchAttemptCount,
    this.locationLaunchAttemptCount,
    this.padLaunchAttemptCount,
    this.agencyLaunchAttemptCount,
    this.orbitalLaunchAttemptCountYear,
    this.locationLaunchAttemptCountYear,
    this.padLaunchAttemptCountYear,
    this.agencyLaunchAttemptCountYear,
  });

  factory LaunchNormalDto.fromJson(Map<String, dynamic> json) =>
      _$LaunchNormalDtoFromJson(json);

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
  final int? probability;
  @JsonKey(name: 'weather_concerns')
  final String? weatherConcerns;
  final String? failreason;
  final String? hashtag;
  @JsonKey(name: 'launch_service_provider')
  final AgencyMiniDto launchServiceProvider;
  final RocketDto? rocket;
  final MissionDto? mission;
  final PadDto? pad;
  @JsonKey(name: 'orbital_launch_attempt_count')
  final int? orbitalLaunchAttemptCount;
  @JsonKey(name: 'location_launch_attempt_count')
  final int? locationLaunchAttemptCount;
  @JsonKey(name: 'pad_launch_attempt_count')
  final int? padLaunchAttemptCount;
  @JsonKey(name: 'agency_launch_attempt_count')
  final int? agencyLaunchAttemptCount;
  @JsonKey(name: 'orbital_launch_attempt_count_year')
  final int? orbitalLaunchAttemptCountYear;
  @JsonKey(name: 'location_launch_attempt_count_year')
  final int? locationLaunchAttemptCountYear;
  @JsonKey(name: 'pad_launch_attempt_count_year')
  final int? padLaunchAttemptCountYear;
  @JsonKey(name: 'agency_launch_attempt_count_year')
  final int? agencyLaunchAttemptCountYear;
}
