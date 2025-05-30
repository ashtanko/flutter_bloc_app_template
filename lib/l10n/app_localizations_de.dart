// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'flutter_bloc_app_template';

  @override
  String get itemsTitle => 'Beispielartikel';

  @override
  String get emailsTitle => 'E-Mails';

  @override
  String get launchesTitle => 'Starts';

  @override
  String itemTitle(Object id) {
    return 'Beispielartikel $id';
  }

  @override
  String get settingsTitle => 'Einstellungen';

  @override
  String missionTitle(Object mission) {
    return 'Mission: $mission';
  }

  @override
  String launchedAt(Object launchedAt) {
    return 'Gestartet am: $launchedAt';
  }

  @override
  String rocket(Object rocketName, Object rocketType) {
    return 'Rakete: $rocketName ($rocketType)';
  }

  @override
  String daysSinceTodayTitle(Object days) {
    return 'Vor $days Tagen';
  }

  @override
  String daysFromTodayTitle(Object days) {
    return 'In $days Tagen';
  }

  @override
  String get themeTitle => 'Design';

  @override
  String get systemThemeTitle => 'Systemdesign';

  @override
  String get lightThemeTitle => 'Helles Design';

  @override
  String get darkThemeTitle => 'Dunkles Design';

  @override
  String get lightGoldThemeTitle => 'Helles Gold-Design';

  @override
  String get darkGoldThemeTitle => 'Dunkles Gold-Design';

  @override
  String get lightMintThemeTitle => 'Helles Mint-Design';

  @override
  String get darkMintThemeTitle => 'Dunkles Mint-Design';

  @override
  String get experimentalThemeTitle => 'Experimental Theme';

  @override
  String get itemDetailsTitle => 'Artikeldetails';

  @override
  String get error => 'Fehler';

  @override
  String get emptyList => 'Leere Liste';

  @override
  String get tabHome => 'Startseite';

  @override
  String get tabSettings => 'Einstellungen';

  @override
  String get newsScreen => 'Nachrichten';

  @override
  String get disabledButtonTitle => 'Deaktiviert';

  @override
  String get disabledRoundedButtonTitle => 'Deaktiviert (abgerundet)';

  @override
  String get disabledWithIconButtonTitle => 'Deaktiviert mit Icon';

  @override
  String get enabledButtonTitle => 'Aktiviert';

  @override
  String get borderRadiusButtonTitle => 'Abgerundete Ecken';

  @override
  String get borderSideButtonTitle => 'Rahmenlinie';

  @override
  String get iconButtonTitle => 'Mit Icon';

  @override
  String get iconAndPaddingButtonTitle => 'Mit Icon & Abstand';

  @override
  String get transparentButtonTitle => 'Transparent';
}
