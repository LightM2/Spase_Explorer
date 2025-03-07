import 'package:api_client/api_client.dart';
import 'package:spase_explorer/core/models/models.dart';

class NewsRepository {
  const NewsRepository({required NewsApiClient apiClient})
      : _apiClient = apiClient;

  final NewsApiClient _apiClient;

  Future<List<Article>> getArticles() async {
    final articles = await _apiClient.getArticles();

    return articles.results
        .map(
          (item) => Article(
            id: item.id,
            title: item.title,
            authors: item.authors
                .map(
                  (author) => ArticleAuthor(
                    name: author.name,
                    youtube: author.socials?.youtube,
                    instagram: author.socials?.instagram,
                    linkedin: author.socials?.linkedin,
                    mastodon: author.socials?.mastodon,
                    bluesky: author.socials?.bluesky,
                  ),
                )
                .toList(),
            url: item.url,
            imageUrl: item.imageUrl,
            newsSite: item.newsSite,
            summary: item.summary,
            publishedAt: item.publishedAt,
            updatedAt: item.updatedAt,
            featured: item.featured,
          ),
        )
        .toList();
  }

  Future<Article> getArticle(int id) async {
    final article = await _apiClient.getArticle(id);

    return Article(
      id: article.id,
      title: article.title,
      authors: article.authors
          .map(
            (author) => ArticleAuthor(
              name: author.name,
              youtube: author.socials?.youtube,
              instagram: author.socials?.instagram,
              linkedin: author.socials?.linkedin,
              mastodon: author.socials?.mastodon,
              bluesky: author.socials?.bluesky,
            ),
          )
          .toList(),
      url: article.url,
      imageUrl: article.imageUrl,
      newsSite: article.newsSite,
      summary: article.summary,
      publishedAt: article.publishedAt,
      updatedAt: article.updatedAt,
      featured: article.featured,
    );
  }
}
