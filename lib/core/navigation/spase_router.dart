import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spase_explorer/core/navigation/navigation.dart';
import 'package:spase_explorer/core/repositories/repositories.dart';
import 'package:spase_explorer/feature/news/list/cubit/news_cubit.dart';
import 'package:spase_explorer/feature/news/list/ui/news_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _newsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'newsShell');
final _launchesNavigatorBKey =
    GlobalKey<NavigatorState>(debugLabel: 'launchesShell');
final _eventsNavigatorBKey =
    GlobalKey<NavigatorState>(debugLabel: 'eventsShell');

abstract class SpaseRouter {
  static GoRouter get router => _router;

  static final _router = GoRouter(
    initialLocation: SpaseRoutes.news.path,
    navigatorKey: _rootNavigatorKey,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _newsNavigatorKey,
            routes: [
              GoRoute(
                path: SpaseRoutes.news.path,
                name: SpaseRoutes.news.name,
                builder: (context, state) => BlocProvider(
                  create: (context) => NewsListCubit(
                    context.read<NewsRepository>(),
                  )..fetchNewsList(),
                  child: const NewsPage(),
                ),
                routes: [
                  GoRoute(
                    path: SpaseRoutes.newsDetails.path,
                    name: SpaseRoutes.newsDetails.name,
                    builder: (context, state) => const Scaffold(
                      body: Center(child: Text('News details')),
                    ),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _launchesNavigatorBKey,
            routes: [
              GoRoute(
                path: SpaseRoutes.launches.path,
                name: SpaseRoutes.launches.name,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: Scaffold(
                    body: Center(child: Text('Launches')),
                  ),
                ),
                routes: [
                  GoRoute(
                    path: SpaseRoutes.launchDetails.path,
                    name: SpaseRoutes.launchDetails.name,
                    builder: (context, state) => const Scaffold(
                      body: Center(child: Text('Launch details')),
                    ),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _eventsNavigatorBKey,
            routes: [
              GoRoute(
                path: SpaseRoutes.events.path,
                name: SpaseRoutes.events.name,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: Scaffold(
                    body: Center(child: Text('Events')),
                  ),
                ),
                routes: [
                  GoRoute(
                    path: SpaseRoutes.eventsDetails.path,
                    name: SpaseRoutes.eventsDetails.name,
                    builder: (context, state) => const Scaffold(
                      body: Center(child: Text('Event details')),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
