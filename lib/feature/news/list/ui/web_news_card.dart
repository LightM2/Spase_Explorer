import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spase_explorer/core/design_system/design_system.dart';
import 'package:spase_explorer/core/models/models.dart';
import 'package:spase_explorer/l10n/l10n.dart';

class WebNewsCard extends StatelessWidget {
  const WebNewsCard({
    required this.article,
    required this.onTap,
    super.key,
  });

  final Article article;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: Card(
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                article.imageUrl,
                height: 200,
                width: 360,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.news_author_text(
                      article.authors.first.name,
                    ),
                    style: const TextStyle(
                      fontSize: 12,
                      color: SpaceColors.onSurfaceVariant,
                    ),
                  ),
                  const Gap(4),
                  Text(
                    article.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  ),
                  const Gap(4),
                  Text(
                    article.summary,
                    style: const TextStyle(
                      fontSize: 14,
                      color: SpaceColors.tertiaryFixed,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
