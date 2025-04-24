import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/launches/launches_screen.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';

List<NavDestination> getDestinations(BuildContext context) {
  return [
    NavDestination(
      label: S.of(context).launchesTitle,
      icon: const Icon(Icons.rocket_outlined),
      selectedIcon: const Icon(Icons.rocket),
      screen: const LaunchesScreen(),
    ),
    NavDestination(
      label: S.of(context).emailsTitle,
      icon: const Icon(Icons.mail_outline),
      selectedIcon: const Icon(Icons.mail),
      screen: const EmailListScreen(),
    ),
    NavDestination(
      label: S.of(context).settingsTitle,
      icon: const Icon(Icons.settings_outlined),
      selectedIcon: const Icon(Icons.settings),
      screen: const SettingsScreen(),
    ),
  ];
}

List<NavigationDestination> getNavDestinations(BuildContext context) {
  return getDestinations(context)
      .map((e) => NavigationDestination(
            icon: e.icon,
            selectedIcon: e.selectedIcon,
            label: e.label,
          ))
      .toList();
}

Widget getScreenByIndex(BuildContext context, int idx) {
  return getDestinations(context)[idx].screen;
}
