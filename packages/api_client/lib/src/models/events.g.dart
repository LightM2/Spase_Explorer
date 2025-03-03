// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventsDto _$EventsDtoFromJson(Map<String, dynamic> json) => EventsDto(
      count: (json['count'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => EventBasicDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
    );

Map<String, dynamic> _$EventsDtoToJson(EventsDto instance) => <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
