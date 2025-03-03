// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticlesDto _$ArticlesDtoFromJson(Map<String, dynamic> json) => ArticlesDto(
      count: (json['count'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => ArticleDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
    );

Map<String, dynamic> _$ArticlesDtoToJson(ArticlesDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
