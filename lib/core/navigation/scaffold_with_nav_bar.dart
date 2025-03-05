import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spase_explorer/l10n/l10n.dart';

class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: [
          NavigationDestination(
            label: context.l10n.newsTab_title,
            icon: const Icon(Icons.newspaper),
          ),
          NavigationDestination(
            label: context.l10n.launchesTab_title,
            icon: const Icon(Icons.rocket_launch),
          ),
          NavigationDestination(
            label: context.l10n.eventsTab_title,
            icon: const Icon(Icons.event_available),
          ),
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}
