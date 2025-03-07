class Article {
  Article({
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

  final int id;
  final String title;
  final List<ArticleAuthor> authors;
  final String url;
  final String imageUrl;
  final String newsSite;
  final String summary;
  final DateTime publishedAt;
  final DateTime updatedAt;
  final bool featured;
}

class ArticleAuthor {
  ArticleAuthor({
    required this.name,
    this.youtube,
    this.instagram,
    this.linkedin,
    this.mastodon,
    this.bluesky,
  });

  final String name;
  final String? youtube;
  final String? instagram;
  final String? linkedin;
  final String? mastodon;
  final String? bluesky;
}
