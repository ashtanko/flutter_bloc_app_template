import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/cores/cores_screen.dart';
import 'package:flutter_bloc_app_template/features/launches/launches_screen.dart';
import 'package:flutter_bloc_app_template/features/rockets/rockets_screen.dart';
import 'package:flutter_bloc_app_template/index.dart';

List<NavDestination> getDestinations(BuildContext context) {
  return [
    NavDestination(
      label: context.launchesTitle,
      icon: const Icon(Icons.rocket_launch_outlined),
      selectedIcon: const Icon(Icons.rocket_launch),
      screen: const LaunchesScreen(),
      key: const Key('launches'),
    ),
    NavDestination(
      label: context.rocketsTab,
      icon: const Icon(Icons.rocket_outlined),
      selectedIcon: const Icon(Icons.rocket),
      screen: const RocketsScreen(),
      key: const Key('rockets'),
    ),
    NavDestination(
      label: context.coresLabel,
      icon: const Icon(Icons.memory_outlined),
      selectedIcon: const Icon(Icons.memory),
      screen: const CoresScreen(),
      key: const Key('cores_screen'),
    ),
    NavDestination(
      label: context.settingsTitle,
      icon: const Icon(Icons.settings_outlined),
      selectedIcon: const Icon(Icons.settings),
      screen: const SettingsScreen(),
      key: const Key('settings'),
    ),
  ];
}

List<NavigationDestination> getNavDestinations(BuildContext context) {
  return getDestinations(context)
      .map((e) => NavigationDestination(
            key: e.key,
            icon: e.icon,
            selectedIcon: e.selectedIcon,
            label: e.label,
          ))
      .toList();
}

Widget getScreenByIndex(BuildContext context, int idx) {
  return getDestinations(context)[idx].screen;
}
