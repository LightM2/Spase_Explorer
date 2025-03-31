import 'package:flutter/material.dart';
import 'package:spase_explorer/core/models/models.dart';
import 'package:spase_explorer/feature/news/list/ui/mobile_news_screen.dart';
import 'package:spase_explorer/feature/news/list/ui/web_news_screen.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final article = Article(
      id: 29931,
      title:
          'Join or die: How satellite manufacturers approach competition with  SpaceX',
      authors: [ArticleAuthor(name: 'Debra Werner')],
      url:
          'https://spacenews.com/join-or-die-how-satellite-manufacturers-approach-competition-with-spacex/',
      imageUrl:
          'https://i0.wp.com/spacenews.com/wp-content/uploads/2024/07/Aerospacelab_VHR_20231221_0016-scaled.jpg?fit=1024%2C681&quality=89&ssl=1',
      newsSite: 'SpaceNews',
      summary:
          'If satellite manufacturers don’t find ways to compete more effectively, SpaceX could dominate their market. \nThe post Join or die: How satellite manufacturers approach competition with  SpaceX appeared first on SpaceNews.',
      publishedAt: DateTime.now(),
      updatedAt: DateTime.now(),
      featured: false,
    );

    final isLarge = MediaQuery.of(context).size.width > 600;
    return isLarge
        ? WebNewsScreen(article: article)
        : MobileNewsScreen(article: article);
  }
}
