import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spase_explorer/core/design_system/design_system.dart';
import 'package:spase_explorer/core/navigation/navigation.dart';
import 'package:spase_explorer/core/repositories/repositories.dart';
import 'package:spase_explorer/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({
    required NewsRepository newsRepository,
    super.key,
  }) : _newsRepository = newsRepository;

  final NewsRepository _newsRepository;

  @override
  Widget build(BuildContext context) {
    final textTheme = createTextTheme(context);
    final theme = SpaseTheme(textTheme);

    return MultiBlocProvider(
        providers: [
          RepositoryProvider.value(value: _newsRepository),
        ],
        child: MaterialApp.router(
          theme: theme.dark(),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          routerConfig: SpaseRouter.router,
        ));
  }
}
