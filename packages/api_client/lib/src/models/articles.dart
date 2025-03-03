import 'package:api_client/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'articles.g.dart';

@JsonSerializable()
class ArticlesDto{
  ArticlesDto({
    required this.count,
    required this.results,
    this.next,
    this.previous,
  });

  factory ArticlesDto.fromJson(Map<String, dynamic> json) =>
      _$ArticlesDtoFromJson(json);

  final int count;
  final String? next;
  final String? previous;
  final List<ArticleDto> results;

}
