import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spase_explorer/core/models/models.dart';
import 'package:spase_explorer/feature/news/list/ui/web_news_card.dart';
import 'package:spase_explorer/l10n/l10n.dart';

class WebNewsScreen extends StatelessWidget {
  const WebNewsScreen({
    required this.article,
    super.key,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            const Gap(32),
            Text(
              context.l10n.news_web_title,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
            ),
            const Gap(32),
            Expanded(
              child: SingleChildScrollView(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    mainAxisExtent: 380,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 16,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(20, (i) {
                    return WebNewsCard(article: article, onTap: () {});
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
