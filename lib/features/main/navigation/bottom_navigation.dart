import 'package:flutter/material.dart';

class AppBottomNavigation extends StatelessWidget {
  const AppBottomNavigation({
    super.key,
    required this.navDestinations,
    this.currentIndex = 0,
    required this.onSelected,
  });

  final List<NavigationDestination> navDestinations;
  final int currentIndex;
  final void Function(int) onSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: navDestinations,
      selectedIndex: currentIndex,
      onDestinationSelected: onSelected,
    );
  }
}
