import 'package:flutter/material.dart';

class NavDestination {
  const NavDestination({
    required this.screen,
    required this.label,
    required this.icon,
    this.selectedIcon,
    this.child,
  });

  final Widget screen;
  final String label;
  final Icon icon;
  final Widget? selectedIcon;
  final Widget? child;
}
