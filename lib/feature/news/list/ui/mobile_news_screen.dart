import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spase_explorer/core/models/models.dart';
import 'package:spase_explorer/feature/news/list/ui/mobile_news_card.dart';

class MobileNewsScreen extends StatelessWidget {
  const MobileNewsScreen({
    required this.articles,
    super.key,
  });

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        itemBuilder: (context, index) => Builder(
          builder: (context) {
            return MobileNewsCard(
              article: articles[index],
              onTap: () {},
            );
          },
        ),
        separatorBuilder: (context, _) => const Gap(8),
        itemCount: articles.length,
      ),
    );
  }
}
