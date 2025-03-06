import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:spase_explorer/core/design_system/design_system.dart';
import 'package:spase_explorer/l10n/l10n.dart';

class WebScaffold extends StatelessWidget {
  const WebScaffold({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = navigationShell.currentIndex;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Gap(8),
            Assets.icons.launches.svg(
              colorFilter: const ColorFilter.mode(
                SpaceColors.primaryFixed,
                BlendMode.srcIn,
              ),
            ),
            const Gap(8),
            Text(
              context.l10n.appBarTitle,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          _WebTabItem(
            title: context.l10n.newsTab_title,
            isSelected: currentIndex == 0,
            onClick: () => _goBranch(0),
          ),
          _WebTabItem(
            title: context.l10n.launchesTab_title,
            isSelected: currentIndex == 1,
            onClick: () => _goBranch(1),
          ),
          _WebTabItem(
            title: context.l10n.eventsTab_title,
            isSelected: currentIndex == 2,
            onClick: () => _goBranch(2),
          ),
          const Gap(40),
        ],
      ),
      body: navigationShell,
    );
  }
}

class _WebTabItem extends StatelessWidget {
  const _WebTabItem({
    required this.title,
    required this.isSelected,
    required this.onClick,
  });

  final String title;
  final bool isSelected;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    final style = isSelected
        ? const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            decorationColor: SpaceColors.onPrimary,
            decorationThickness: 2,
          )
        : const TextStyle(fontSize: 16);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: onClick,
        child: Text(title, style: style),
      ),
    );
  }
}
