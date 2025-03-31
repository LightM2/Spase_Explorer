import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spase_explorer/core/design_system/design_system.dart';
import 'package:spase_explorer/core/models/models.dart';
import 'package:spase_explorer/l10n/l10n.dart';

class MobileNewsCard extends StatelessWidget {
  const MobileNewsCard({
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  article.imageUrl,
                  height: 96,
                  width: 96,
                  fit: BoxFit.cover,
                ),
              ),
              const Gap(16),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      article.summary,
                      style: const TextStyle(
                        fontSize: 14,
                        color: SpaceColors.tertiaryFixed,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
