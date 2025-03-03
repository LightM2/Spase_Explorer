// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchesDto _$LaunchesDtoFromJson(Map<String, dynamic> json) => LaunchesDto(
      count: (json['count'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => LaunchBasicDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
    );

Map<String, dynamic> _$LaunchesDtoToJson(LaunchesDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
