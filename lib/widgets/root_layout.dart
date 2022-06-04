import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/routes/routes.dart' as router;
import 'package:go_router/go_router.dart';

class RootLayout extends StatelessWidget {
  const RootLayout({
    Key? key,
    required this.currentIndex,
    required this.child,
  }) : super(key: key);

  final Widget child;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, dimens) {
      void onSelected(int index) {
        final destination = router.destinations[index];
        GoRouter.of(context).go(destination.route);
      }

      final res = router.destinations
          .map((e) => NavigationDestination(
                icon: e.icon,
                label: e.label,
              ))
          .toList();

      return LayoutBuilder(
        builder: (context, dimens) {
          // Mobile Layout
          return Scaffold(
            body: child,
            bottomNavigationBar: NavigationBar(
              destinations: res,
              selectedIndex: currentIndex,
              onDestinationSelected: onSelected,
            ),
          );
        },
      );
    });
  }
}
