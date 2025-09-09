import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';

extension LocalizationExtension on BuildContext {
  S get l10n => S.of(this);
}

extension StringResourcesExtension on BuildContext {
  String get appearanceSettingsItem => l10n.appearanceSettingsItem;

  String get appTitle => l10n.appTitle;

  String get appearanceTitle => l10n.appearanceTitle;

  String get dynamicColorSettingsItemTitle =>
      l10n.dynamicColorSettingsItemTitle;

  String get dynamicColorSettingsItemDescription =>
      l10n.dynamicColorSettingsItemDescription;

  String get darkThemeTitle => l10n.darkThemeTitle;

  String get darkThemeOnSettingsItemTitle => l10n.darkThemeOnSettingsItemTitle;

  String get darkThemeOffSettingsItemTitle =>
      l10n.darkThemeOffSettingsItemTitle;

  String get darkThemeFollowSystemSettingsItemTitle =>
      l10n.darkThemeFollowSystemSettingsItemTitle;

  String get emailsTitle => l10n.emailsTitle;

  String get rocketsTab => l10n.rocketsTab;

  String get coresLabel => l10n.coresLabel;

  String get settingsTitle => l10n.settingsTitle;

  String get emptyList => l10n.emptyList;

  String get launchesTitle => l10n.launchesTitle;

  String get rocketsTitle => l10n.rocketsTitle;

  String get tryAgainButton => l10n.tryAgainButton;

  String get aboutSettingsItem => l10n.aboutSettingsItem;

  String get aboutSettingsItemDescription => l10n.aboutSettingsItemDescription;

  String launchedAt(Object launchedAt) {
    return l10n.launchedAt(launchedAt);
  }

  String get appearanceSettingsItemDescription =>
      l10n.appearanceSettingsItemDescription;
}
