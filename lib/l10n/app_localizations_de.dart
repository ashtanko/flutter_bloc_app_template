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
  String get appearanceTitle => 'Darstellung';

  @override
  String get dynamicColorSettingsItemTitle => 'Dynamische Farben verwenden';

  @override
  String get dynamicColorSettingsItemDescription =>
      'App-Farben an das Hintergrundbild anpassen';

  @override
  String get darkThemeSettingsItemTitle => 'Designmodus';

  @override
  String get darkThemeOnSettingsItemTitle => 'Dunkel';

  @override
  String get darkThemeOffSettingsItemTitle => 'Hell';

  @override
  String get darkThemeFollowSystemSettingsItemTitle => 'Systemstandard';

  @override
  String get tryAgainButton => 'Erneut versuchen';

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

  @override
  String get missionTimeline => 'Missionszeitplan';

  @override
  String get staticFireTest => 'Statischer Feuertest';

  @override
  String get launch => 'Start';

  @override
  String get missionSuccess => 'Missionserfolg';

  @override
  String get objectivesCompleted => 'Ziele erreicht';

  @override
  String get missionSuccessful => 'Mission erfolgreich';

  @override
  String get missionFailed => 'Mission fehlgeschlagen';

  @override
  String get allObjectivesCompleted => 'Alle Ziele erreicht';

  @override
  String get objectivesNotMet => 'Missionsziele nicht erreicht';

  @override
  String get rocketTitle => 'Rakete';

  @override
  String get payload => 'Nutzlast';

  @override
  String get orbit => 'Umlaufbahn';

  @override
  String get rocketDetails => 'Raketendetails';

  @override
  String get rocketName => 'Raketenname';

  @override
  String get rocketType => 'Typ';

  @override
  String get rocketBlock => 'Block';

  @override
  String get firstStage => '🚀 Erste Stufe';

  @override
  String get coreSerial => 'Kernseriennummer';

  @override
  String get flight => 'Flug';

  @override
  String get landing => 'Landung';

  @override
  String get landingSuccess => 'Landung erfolgreich';

  @override
  String get gridFins => 'Steuergitter';

  @override
  String get landingLegs => 'Landebeine';

  @override
  String get reused => 'Wiederverwendet';

  @override
  String get notAvailable => 'Nicht verfügbar';

  @override
  String get recoveryShips => 'Bergungsschiffe';

  @override
  String get payloadTitle => 'Nutzlast';

  @override
  String get id => 'Kennung';

  @override
  String get type => 'Typ';

  @override
  String get mass => 'Masse';

  @override
  String get manufacturer => 'Hersteller';

  @override
  String get nationality => 'Nationalität';

  @override
  String get customers => 'Kunden';

  @override
  String get missionOverview => 'Missionsübersicht';

  @override
  String get noDetails => 'Keine Details verfügbar';

  @override
  String get linksResources => 'Links & Ressourcen';

  @override
  String get watchVideo => 'Video ansehen';

  @override
  String get wikipedia => 'Wikipedia';

  @override
  String get article => 'Artikel';

  @override
  String get reddit => 'Reddit';

  @override
  String get pressKit => 'Pressemappe';

  @override
  String get launchSite => 'Startplatz';

  @override
  String get siteIdLabel => 'Standort-ID:';

  @override
  String flightNumber(Object number) {
    return 'Flug #$number';
  }

  @override
  String get rocketsTab => 'Raketen';

  @override
  String get activeStatus => 'Aktiv';

  @override
  String get retiredStatus => 'Außer Dienst';

  @override
  String successRate(Object percentage) {
    return '$percentage% Erfolg';
  }

  @override
  String get rocketsTitle => 'Raketen';

  @override
  String get overview => 'Übersicht';

  @override
  String get specifications => 'Spezifikationen';

  @override
  String get payloadCapacity => 'Nutzlastkapazität';

  @override
  String get engineDetails => 'Motordetails';

  @override
  String get heightLabel => 'Höhe';

  @override
  String get diameterLabel => 'Durchmesser';

  @override
  String get massLabel => 'Masse';

  @override
  String get stagesLabel => 'Stufen';

  @override
  String get typeLabel => 'Typ';

  @override
  String get versionLabel => 'Version';

  @override
  String get numberLabel => 'Anzahl';

  @override
  String get propellant1Label => 'Treibstoff 1';

  @override
  String get propellant2Label => 'Treibstoff 2';

  @override
  String get thrustSeaLevelLabel => 'Schub (Bodenniveau)';

  @override
  String get tons => 'Tonnen';
}
