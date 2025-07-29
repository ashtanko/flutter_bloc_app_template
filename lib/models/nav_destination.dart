import 'package:flutter/material.dart';

class NavDestination {
  const NavDestination({
    required this.screen,
    required this.label,
    required this.icon,
    required this.key,
    this.selectedIcon,
    this.child,
  });

  final Widget screen;
  final String label;
  final Widget icon;
  final Widget? selectedIcon;
  final Widget? child;
  final Key key;
}
