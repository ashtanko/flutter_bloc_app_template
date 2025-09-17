import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/features/appearance/appearance_screen.dart';
import 'package:flutter_bloc_app_template/features/appearance/dark_theme_screen.dart';
import 'package:flutter_bloc_app_template/features/launch/launch_screen.dart';
import 'package:flutter_bloc_app_template/features/rocket/rocket_screen.dart';
import 'package:flutter_bloc_app_template/index.dart';

class Routes {
  static const app = 'home';
  static const appearance = 'appearance';
  static const darkTheme = 'darkTheme';
  static const launch = 'launch';
  static const rocket = 'rocket';
}

final GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class NavigationService {
  final _appRoutes = {
    Routes.app: (_) => const MainScreen(),
    Routes.appearance: (_) => const AppearanceScreen(),
    Routes.darkTheme: (_) => const DarkThemeScreen(),
    Routes.launch: (_) => const LaunchScreen(),
    Routes.rocket: (_) => const RocketScreen(),
  };

  final Set<String> _animatedRoutes = {
    Routes.appearance,
    Routes.darkTheme,
    Routes.launch,
    Routes.rocket,
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
          : appNavigatorKey.currentState?.pushNamed(
              routeName,
              arguments: arguments,
            );
    }
  }

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final builder = _appRoutes[settings.name];
    if (builder == null) {
      return MaterialPageRoute(builder: (_) => const SplashView());
    }

    final isFullScreen = _fullScreenRoutes.contains(settings.name);
    final isCupertino = _cupertinoRoutes.contains(settings.name);
    final isAnimated = _animatedRoutes.contains(settings.name);

    if (isAnimated) {
      return PageRouteBuilder(
        settings: settings,
        pageBuilder: (context, animation, secondaryAnimation) =>
            builder(settings.arguments),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0); // Slide from right
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          final tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 400),
      );
    }

    if (isCupertino) {
      return CupertinoPageRoute(
        settings: settings,
        builder: (_) => builder(settings.arguments),
        fullscreenDialog: isFullScreen,
      );
    }

    return MaterialPageRoute(
      settings: settings,
      builder: (_) => builder(settings.arguments),
      fullscreenDialog: isFullScreen,
    );
  }

  Future<dynamic> pushAndRemoveAll(
    String routeName, [
    Object? arguments,
  ]) async {
    return appNavigatorKey.currentState
        ?.pushNamedAndRemoveUntil(routeName, (route) => false);
  }
}
