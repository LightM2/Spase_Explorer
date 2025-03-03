import 'package:api_client/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'launches.g.dart';

@JsonSerializable()
class LaunchesDto {
  LaunchesDto({
    required this.count,
    required this.results,
    this.next,
    this.previous,
  });

  factory LaunchesDto.fromJson(Map<String, dynamic> json) =>
      _$LaunchesDtoFromJson(json);

  final int count;
  final String? next;
  final String? previous;
  final List<LaunchBasicDto> results;
}
