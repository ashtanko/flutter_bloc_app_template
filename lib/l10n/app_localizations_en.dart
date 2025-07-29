// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'flutter_bloc_app_template';

  @override
  String get itemsTitle => 'Sample Items';

  @override
  String get emailsTitle => 'Emails';

  @override
  String get launchesTitle => 'Launches';

  @override
  String itemTitle(Object id) {
    return 'Sample Item $id';
  }

  @override
  String get settingsTitle => 'Settings';

  @override
  String get appearanceTitle => 'Appearance';

  @override
  String get dynamicColorSettingsItemTitle => 'Use dynamic colors';

  @override
  String get dynamicColorSettingsItemDescription =>
      'Adapt app colors to your wallpaper';

  @override
  String get darkThemeSettingsItemTitle => 'Theme mode';

  @override
  String get darkThemeOnSettingsItemTitle => 'Dark';

  @override
  String get darkThemeOffSettingsItemTitle => 'Light';

  @override
  String get darkThemeFollowSystemSettingsItemTitle => 'System default';

  @override
  String get tryAgainButton => 'Try Again';

  @override
  String get appearanceSettingsItem => 'Appearance';

  @override
  String get appearanceSettingsItemDescription =>
      'Dark theme dynamic color, languages';

  @override
  String get aboutSettingsItem => 'About';

  @override
  String get aboutSettingsItemDescription => 'Version, links, feedback';

  @override
  String missionTitle(Object mission) {
    return 'Mission: $mission';
  }

  @override
  String launchedAt(Object launchedAt) {
    return 'Launched at: $launchedAt';
  }

  @override
  String rocket(Object rocketName, Object rocketType) {
    return 'Rocket: $rocketName ($rocketType)';
  }

  @override
  String daysSinceTodayTitle(Object days) {
    return '$days days ago';
  }

  @override
  String daysFromTodayTitle(Object days) {
    return 'In $days days';
  }

  @override
  String get themeTitle => 'Theme';

  @override
  String get systemThemeTitle => 'System Theme';

  @override
  String get lightThemeTitle => 'Light Theme';

  @override
  String get darkThemeTitle => 'Dark Theme';

  @override
  String get lightGoldThemeTitle => 'Light Gold';

  @override
  String get darkGoldThemeTitle => 'Dark Gold';

  @override
  String get lightMintThemeTitle => 'Light Mint';

  @override
  String get darkMintThemeTitle => 'Dark Mint';

  @override
  String get experimentalThemeTitle => 'Experimental Theme';

  @override
  String get itemDetailsTitle => 'Item Details';

  @override
  String get error => 'Error';

  @override
  String get emptyList => 'Empty list';

  @override
  String get tabHome => 'Home';

  @override
  String get tabSettings => 'Settings';

  @override
  String get newsScreen => 'News';

  @override
  String get disabledButtonTitle => 'Disabled';

  @override
  String get disabledRoundedButtonTitle => 'Disabled Rounded';

  @override
  String get disabledWithIconButtonTitle => 'Disabled With Icon';

  @override
  String get enabledButtonTitle => 'Enabled';

  @override
  String get borderRadiusButtonTitle => 'BorderRadius';

  @override
  String get borderSideButtonTitle => 'BorderSide';

  @override
  String get iconButtonTitle => 'With Icon';

  @override
  String get iconAndPaddingButtonTitle => 'With Icon Padding';

  @override
  String get transparentButtonTitle => 'Transparent';
}
