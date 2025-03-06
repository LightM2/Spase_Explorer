import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spase_explorer/core/navigation/widgets/mobile_scaffold.dart';
import 'package:spase_explorer/core/navigation/widgets/web_scaffold.dart';

class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final isLarge = MediaQuery.of(context).size.width > 600;
    return isLarge
        ? WebScaffold(navigationShell: navigationShell)
        : MobileScaffold(navigationShell: navigationShell);
  }
}
