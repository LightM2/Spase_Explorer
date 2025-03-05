import 'package:flutter/material.dart';
import 'package:spase_explorer/core/design_system/design_system.dart';
import 'package:spase_explorer/core/navigation/navigation.dart';
import 'package:spase_explorer/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = createTextTheme(context);
    final theme = SpaseTheme(textTheme);

    return MaterialApp.router(
      theme: theme.dark(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: SpaseRouter.router,
    );
  }
}
