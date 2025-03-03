import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable()
class ArticleDto {
  ArticleDto({
    required this.id,
    required this.title,
    required this.authors,
    required this.url,
    required this.imageUrl,
    required this.newsSite,
    required this.summary,
    required this.publishedAt,
    required this.updatedAt,
    required this.featured,
  });

  factory ArticleDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleDtoFromJson(json);

  final int id;
  final String title;
  final List<ArticleAuthorDto> authors;
  final String url;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @JsonKey(name: 'news_site')
  final String newsSite;
  final String summary;
  @JsonKey(name: 'published_at')
  final DateTime publishedAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  final bool featured;
}

@JsonSerializable()
class ArticleAuthorDto {
  ArticleAuthorDto({
    required this.name,
    required this.socials,
  });

  factory ArticleAuthorDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleAuthorDtoFromJson(json);

  final String name;
  final ArticleAuthorSocials? socials;
}

@JsonSerializable()
class ArticleAuthorSocials {
  ArticleAuthorSocials({
    this.x,
    this.youtube,
    this.instagram,
    this.linkedin,
    this.mastodon,
    this.bluesky,
  });

  factory ArticleAuthorSocials.fromJson(Map<String, dynamic> json) =>
      _$ArticleAuthorSocialsFromJson(json);

  final String? x;
  final String? youtube;
  final String? instagram;
  final String? linkedin;
  final String? mastodon;
  final String? bluesky;
}
