import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/index.dart';

const List<NavDestination> destinations = [
  NavDestination(
    label: 'Home',
    icon: Icon(Icons.home_filled),
    selectedIcon: Icon(Icons.home_filled),
    screen: EmailListScreen(),
  ),
  NavDestination(
    label: 'News',
    icon: Icon(Icons.library_books_outlined),
    selectedIcon: Icon(Icons.library_books),
    screen: NewsScreen(),
  ),
  NavDestination(
    label: 'Settings',
    icon: Icon(Icons.settings),
    selectedIcon: Icon(Icons.settings_applications),
    screen: SettingsScreen(),
  ),
];

class Routes {
  static const app = 'home';
}

final GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class NavigationService {
  final _appRoutes = {
    Routes.app: (_) => const MainScreen(),
  };

  // iOS: full screen routes pop up from the bottom and disappear vertically too
  // On iOS that's a standard full screen dialog
  // Has no effect on Android.
  final Set<String> _fullScreenRoutes = {};

  // iOS transition: Pages that slides in from the right and exits in reverse.
  final Set<String> _cupertinoRoutes = {};

  static NavigationService of(BuildContext context) =>
      RepositoryProvider.of<NavigationService>(context);

  Future<dynamic> navigateTo(
    String routeName, [
    Object? arguments,
    bool replace = false,
  ]) async {
    if (_appRoutes[routeName] != null) {
      return replace
          ? appNavigatorKey.currentState
              ?.pushReplacementNamed(routeName, arguments: arguments)
          : appNavigatorKey.currentState
              ?.pushNamed(routeName, arguments: arguments);
    }
  }

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return _appRoutes[settings.name!] != null
        ? _cupertinoRoutes.contains(settings.name)
            ? CupertinoPageRoute(
                settings: settings,
                builder: (_) => _appRoutes[settings.name]!(settings.arguments),
                fullscreenDialog: _fullScreenRoutes.contains(settings.name),
              )
            : MaterialPageRoute(
                settings: settings,
                builder: (_) => _appRoutes[settings.name]!(settings.arguments),
                fullscreenDialog: _fullScreenRoutes.contains(settings.name),
              )
        : MaterialPageRoute(builder: (_) => const SplashView());
  }

  Future<dynamic> pushAndRemoveAll(
    String routeName, [
    Object? arguments,
  ]) async {
    return appNavigatorKey.currentState
        ?.pushNamedAndRemoveUntil(routeName, (route) => false);
  }
}
