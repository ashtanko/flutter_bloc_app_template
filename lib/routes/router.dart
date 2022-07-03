import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:go_router/go_router.dart';

import '../widgets/root_layout.dart';

const _pageKey = ValueKey('_pageKey');
const _scaffoldKey = ValueKey('_scaffoldKey');

class NavDestination {
  const NavDestination({
    required this.route,
    required this.label,
    required this.icon,
    this.child,
  });

  final String route;
  final String label;
  final Icon icon;
  final Widget? child;
}

const List<NavDestination> destinations = [
  NavDestination(
    label: 'Home',
    icon: Icon(Icons.home),
    route: EmailListScreen.routeName,
  ),
  NavDestination(
    label: 'Widgets',
    icon: Icon(Icons.widgets),
    route: WidgetListScreen.routeName,
  ),
  NavDestination(
    label: 'Settings',
    icon: Icon(AppIcons.toolbarSettings),
    route: Settings.routeName,
  ),
];

final appRouter = GoRouter(
  routes: [
    // HomeScreen
    GoRoute(
      path: EmailListScreen.routeName,
      pageBuilder: (context, state) => const MaterialPage<void>(
        key: _pageKey,
        child: RootLayout(
          key: _scaffoldKey,
          currentIndex: 0,
          child: EmailListScreen(),
        ),
      ),
    ),
    GoRoute(
      path: WidgetListScreen.routeName,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const RootLayout(
          key: _scaffoldKey,
          currentIndex: 1,
          child: WidgetListScreen(),
        ),
      ),
    ),
    // PlaylistHomeScreen
    GoRoute(
      path: Settings.routeName,
      pageBuilder: (context, state) => const MaterialPage<void>(
        key: _pageKey,
        child: RootLayout(
          key: _scaffoldKey,
          currentIndex: 2,
          child: Settings(),
        ),
      ),
    ),
    for (final route in destinations.skip(3))
      GoRoute(
        path: route.route,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: _pageKey,
          child: RootLayout(
            key: _scaffoldKey,
            currentIndex: destinations.indexOf(route),
            child: const SizedBox(),
          ),
        ),
      ),
  ],
);
