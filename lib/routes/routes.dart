import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/index.dart';

class Routes {
  /// Methods that generate all routes
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    try {
      switch (routeSettings.name) {
        case Settings.routeName:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const Settings(),
          );
        case EmailListScreen.routeName:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const EmailListScreen(),
          );
        default:
          return errorRoute(routeSettings);
      }
    } catch (_) {
      return errorRoute(routeSettings);
    }
  }

  /// Method that called the error screen when necessary
  static Route<dynamic> errorRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(
      settings: routeSettings,
      builder: (_) => ErrorScreen(),
    );
  }
}
