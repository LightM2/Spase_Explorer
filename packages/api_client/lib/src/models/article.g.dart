// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleDto _$ArticleDtoFromJson(Map<String, dynamic> json) => ArticleDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      authors: (json['authors'] as List<dynamic>)
          .map((e) => ArticleAuthorDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String,
      imageUrl: json['image_url'] as String,
      newsSite: json['news_site'] as String,
      summary: json['summary'] as String,
      publishedAt: DateTime.parse(json['published_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      featured: json['featured'] as bool,
    );

Map<String, dynamic> _$ArticleDtoToJson(ArticleDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'authors': instance.authors,
      'url': instance.url,
      'image_url': instance.imageUrl,
      'news_site': instance.newsSite,
      'summary': instance.summary,
      'published_at': instance.publishedAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'featured': instance.featured,
    };

ArticleAuthorDto _$ArticleAuthorDtoFromJson(Map<String, dynamic> json) =>
    ArticleAuthorDto(
      name: json['name'] as String,
      socials: json['socials'] == null
          ? null
          : ArticleAuthorSocials.fromJson(
              json['socials'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArticleAuthorDtoToJson(ArticleAuthorDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'socials': instance.socials,
    };

ArticleAuthorSocials _$ArticleAuthorSocialsFromJson(
        Map<String, dynamic> json) =>
    ArticleAuthorSocials(
      x: json['x'] as String?,
      youtube: json['youtube'] as String?,
      instagram: json['instagram'] as String?,
      linkedin: json['linkedin'] as String?,
      mastodon: json['mastodon'] as String?,
      bluesky: json['bluesky'] as String?,
    );

Map<String, dynamic> _$ArticleAuthorSocialsToJson(
        ArticleAuthorSocials instance) =>
    <String, dynamic>{
      'x': instance.x,
      'youtube': instance.youtube,
      'instagram': instance.instagram,
      'linkedin': instance.linkedin,
      'mastodon': instance.mastodon,
      'bluesky': instance.bluesky,
    };
