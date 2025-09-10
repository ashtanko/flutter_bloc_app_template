// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'de';

  static String m0(days) => "In ${days} Tagen";

  static String m1(days) => "Vor ${days} Tagen";

  static String m2(number) => "Flug #${number}";

  static String m3(id) => "Beispielartikel ${id}";

  static String m4(date) => "Gestartet: ${date}";

  static String m5(launchedAt) => "Gestartet am: ${launchedAt}";

  static String m6(mission) => "Mission: ${mission}";

  static String m7(rocketName, rocketType) =>
      "Rakete: ${rocketName} (${rocketType})";

  static String m8(percentage) => "${percentage}% Erfolg";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutSettingsItem": MessageLookupByLibrary.simpleMessage("About"),
    "aboutSettingsItemDescription": MessageLookupByLibrary.simpleMessage(
      "Version, links, feedback",
    ),
    "activeStatus": MessageLookupByLibrary.simpleMessage("Aktiv"),
    "allObjectivesCompleted": MessageLookupByLibrary.simpleMessage(
      "Alle Ziele erreicht",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage(
      "flutter_bloc_app_template",
    ),
    "appearanceSettingsItem": MessageLookupByLibrary.simpleMessage(
      "Appearance",
    ),
    "appearanceSettingsItemDescription": MessageLookupByLibrary.simpleMessage(
      "Dark theme dynamic color, languages",
    ),
    "appearanceTitle": MessageLookupByLibrary.simpleMessage("Darstellung"),
    "article": MessageLookupByLibrary.simpleMessage("Artikel"),
    "borderRadiusButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Abgerundete Ecken",
    ),
    "borderSideButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Rahmenlinie",
    ),
    "coreSerial": MessageLookupByLibrary.simpleMessage("Kernseriennummer"),
    "currentSpeed": MessageLookupByLibrary.simpleMessage(
      "Aktuelle Geschwindigkeit",
    ),
    "customers": MessageLookupByLibrary.simpleMessage("Kunden"),
    "darkGoldThemeTitle": MessageLookupByLibrary.simpleMessage(
      "Dunkles Gold-Design",
    ),
    "darkMintThemeTitle": MessageLookupByLibrary.simpleMessage(
      "Dunkles Mint-Design",
    ),
    "darkThemeFollowSystemSettingsItemTitle":
        MessageLookupByLibrary.simpleMessage("Systemstandard"),
    "darkThemeOffSettingsItemTitle": MessageLookupByLibrary.simpleMessage(
      "Hell",
    ),
    "darkThemeOnSettingsItemTitle": MessageLookupByLibrary.simpleMessage(
      "Dunkel",
    ),
    "darkThemeSettingsItemTitle": MessageLookupByLibrary.simpleMessage(
      "Designmodus",
    ),
    "darkThemeTitle": MessageLookupByLibrary.simpleMessage("Dunkles Design"),
    "daysFromTodayTitle": m0,
    "daysSinceTodayTitle": m1,
    "diameterLabel": MessageLookupByLibrary.simpleMessage("Durchmesser"),
    "disabledButtonTitle": MessageLookupByLibrary.simpleMessage("Deaktiviert"),
    "disabledRoundedButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Deaktiviert (abgerundet)",
    ),
    "disabledWithIconButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Deaktiviert mit Icon",
    ),
    "dynamicColorSettingsItemDescription": MessageLookupByLibrary.simpleMessage(
      "App-Farben an das Hintergrundbild anpassen",
    ),
    "dynamicColorSettingsItemTitle": MessageLookupByLibrary.simpleMessage(
      "Dynamische Farben verwenden",
    ),
    "earthDistance": MessageLookupByLibrary.simpleMessage("Abstand zur Erde"),
    "emailsTitle": MessageLookupByLibrary.simpleMessage("E-Mails"),
    "emptyList": MessageLookupByLibrary.simpleMessage("Leere Liste"),
    "enabledButtonTitle": MessageLookupByLibrary.simpleMessage("Aktiviert"),
    "engineDetails": MessageLookupByLibrary.simpleMessage("Motordetails"),
    "error": MessageLookupByLibrary.simpleMessage("Fehler"),
    "firstStage": MessageLookupByLibrary.simpleMessage("🚀 Erste Stufe"),
    "flight": MessageLookupByLibrary.simpleMessage("Flug"),
    "flightNumber": m2,
    "gridFins": MessageLookupByLibrary.simpleMessage("Steuergitter"),
    "heightLabel": MessageLookupByLibrary.simpleMessage("Höhe"),
    "iconAndPaddingButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Mit Icon & Abstand",
    ),
    "iconButtonTitle": MessageLookupByLibrary.simpleMessage("Mit Icon"),
    "id": MessageLookupByLibrary.simpleMessage("Kennung"),
    "itemDetailsTitle": MessageLookupByLibrary.simpleMessage("Artikeldetails"),
    "itemTitle": m3,
    "itemsTitle": MessageLookupByLibrary.simpleMessage("Beispielartikel"),
    "landing": MessageLookupByLibrary.simpleMessage("Landung"),
    "landingLegs": MessageLookupByLibrary.simpleMessage("Landebeine"),
    "landingSuccess": MessageLookupByLibrary.simpleMessage(
      "Landung erfolgreich",
    ),
    "launch": MessageLookupByLibrary.simpleMessage("Start"),
    "launchInformation": MessageLookupByLibrary.simpleMessage(
      "Startinformationen",
    ),
    "launchMass": MessageLookupByLibrary.simpleMessage("Startmasse"),
    "launchSite": MessageLookupByLibrary.simpleMessage("Startplatz"),
    "launchVehicle": MessageLookupByLibrary.simpleMessage("Startfahrzeug"),
    "launched": m4,
    "launchedAt": m5,
    "launchesTitle": MessageLookupByLibrary.simpleMessage("Starts"),
    "learnMore": MessageLookupByLibrary.simpleMessage("Mehr erfahren"),
    "lightGoldThemeTitle": MessageLookupByLibrary.simpleMessage(
      "Helles Gold-Design",
    ),
    "lightMintThemeTitle": MessageLookupByLibrary.simpleMessage(
      "Helles Mint-Design",
    ),
    "lightThemeTitle": MessageLookupByLibrary.simpleMessage("Helles Design"),
    "linksResources": MessageLookupByLibrary.simpleMessage(
      "Links & Ressourcen",
    ),
    "manufacturer": MessageLookupByLibrary.simpleMessage("Hersteller"),
    "marsDistance": MessageLookupByLibrary.simpleMessage("Abstand zum Mars"),
    "mass": MessageLookupByLibrary.simpleMessage("Masse"),
    "massLabel": MessageLookupByLibrary.simpleMessage("Masse"),
    "millionKm": MessageLookupByLibrary.simpleMessage("Millionen km"),
    "missionDetails": MessageLookupByLibrary.simpleMessage("Missionsdetails"),
    "missionFailed": MessageLookupByLibrary.simpleMessage(
      "Mission fehlgeschlagen",
    ),
    "missionOverview": MessageLookupByLibrary.simpleMessage(
      "Missionsübersicht",
    ),
    "missionSuccess": MessageLookupByLibrary.simpleMessage("Missionserfolg"),
    "missionSuccessful": MessageLookupByLibrary.simpleMessage(
      "Mission erfolgreich",
    ),
    "missionTimeline": MessageLookupByLibrary.simpleMessage("Missionszeitplan"),
    "missionTitle": m6,
    "nationality": MessageLookupByLibrary.simpleMessage("Nationalität"),
    "newsScreen": MessageLookupByLibrary.simpleMessage("Nachrichten"),
    "noDetails": MessageLookupByLibrary.simpleMessage(
      "Keine Details verfügbar",
    ),
    "notAvailable": MessageLookupByLibrary.simpleMessage("Nicht verfügbar"),
    "numberLabel": MessageLookupByLibrary.simpleMessage("Anzahl"),
    "objectivesCompleted": MessageLookupByLibrary.simpleMessage(
      "Ziele erreicht",
    ),
    "objectivesNotMet": MessageLookupByLibrary.simpleMessage(
      "Missionsziele nicht erreicht",
    ),
    "orbit": MessageLookupByLibrary.simpleMessage("Umlaufbahn"),
    "orbitalParameters": MessageLookupByLibrary.simpleMessage(
      "Orbitale Parameter",
    ),
    "orbitalPeriod": MessageLookupByLibrary.simpleMessage("Orbitale Periode"),
    "overview": MessageLookupByLibrary.simpleMessage("Übersicht"),
    "payload": MessageLookupByLibrary.simpleMessage("Nutzlast"),
    "payloadCapacity": MessageLookupByLibrary.simpleMessage(
      "Nutzlastkapazität",
    ),
    "payloadTitle": MessageLookupByLibrary.simpleMessage("Nutzlast"),
    "pressKit": MessageLookupByLibrary.simpleMessage("Pressemappe"),
    "propellant1Label": MessageLookupByLibrary.simpleMessage("Treibstoff 1"),
    "propellant2Label": MessageLookupByLibrary.simpleMessage("Treibstoff 2"),
    "recoveryShips": MessageLookupByLibrary.simpleMessage("Bergungsschiffe"),
    "reddit": MessageLookupByLibrary.simpleMessage("Reddit"),
    "retiredStatus": MessageLookupByLibrary.simpleMessage("Außer Dienst"),
    "reused": MessageLookupByLibrary.simpleMessage("Wiederverwendet"),
    "roadsterDescription": MessageLookupByLibrary.simpleMessage(
      "Elon Musks Tesla Roadster",
    ),
    "roadsterTitle": MessageLookupByLibrary.simpleMessage("Roadster"),
    "rocket": m7,
    "rocketBlock": MessageLookupByLibrary.simpleMessage("Block"),
    "rocketDetails": MessageLookupByLibrary.simpleMessage("Raketendetails"),
    "rocketName": MessageLookupByLibrary.simpleMessage("Raketenname"),
    "rocketTitle": MessageLookupByLibrary.simpleMessage("Rakete"),
    "rocketType": MessageLookupByLibrary.simpleMessage("Typ"),
    "rocketsTab": MessageLookupByLibrary.simpleMessage("Raketen"),
    "rocketsTitle": MessageLookupByLibrary.simpleMessage("Raketen"),
    "settingsTitle": MessageLookupByLibrary.simpleMessage("Einstellungen"),
    "siteIdLabel": MessageLookupByLibrary.simpleMessage("Standort-ID:"),
    "specifications": MessageLookupByLibrary.simpleMessage("Spezifikationen"),
    "stagesLabel": MessageLookupByLibrary.simpleMessage("Stufen"),
    "staticFireTest": MessageLookupByLibrary.simpleMessage(
      "Statischer Feuertest",
    ),
    "successRate": m8,
    "systemThemeTitle": MessageLookupByLibrary.simpleMessage("Systemdesign"),
    "tabHome": MessageLookupByLibrary.simpleMessage("Startseite"),
    "tabSettings": MessageLookupByLibrary.simpleMessage("Einstellungen"),
    "themeTitle": MessageLookupByLibrary.simpleMessage("Design"),
    "thrustSeaLevelLabel": MessageLookupByLibrary.simpleMessage(
      "Schub (Bodenniveau)",
    ),
    "tons": MessageLookupByLibrary.simpleMessage("Tonnen"),
    "trackLive": MessageLookupByLibrary.simpleMessage("Live verfolgen"),
    "transparentButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Transparent",
    ),
    "tryAgainButton": MessageLookupByLibrary.simpleMessage("Erneut versuchen"),
    "type": MessageLookupByLibrary.simpleMessage("Typ"),
    "typeLabel": MessageLookupByLibrary.simpleMessage("Typ"),
    "unitDays": MessageLookupByLibrary.simpleMessage("Tage"),
    "unitKph": MessageLookupByLibrary.simpleMessage("km/h"),
    "versionLabel": MessageLookupByLibrary.simpleMessage("Version"),
    "watchVideo": MessageLookupByLibrary.simpleMessage("Video ansehen"),
    "wikipedia": MessageLookupByLibrary.simpleMessage("Wikipedia"),
  };
}
