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

  static String m0(blockNumber) => "Block ${blockNumber}";

  static String m1(days) => "In ${days} Tagen";

  static String m2(days) => "Vor ${days} Tagen";

  static String m3(number) => "Flug #${number}";

  static String m4(id) => "Beispielartikel ${id}";

  static String m5(launchedAt) => "Gestartet am: ${launchedAt}";

  static String m6(mission) => "Mission: ${mission}";

  static String m7(count) => "${count} Missionen";

  static String m8(query) => "Keine Kerne für \"${query}\" gefunden";

  static String m9(count) => "${count} Wiederverwendungen";

  static String m10(rocketName, rocketType) =>
      "Rakete: ${rocketName} (${rocketType})";

  static String m11(percentage) => "${percentage}% Erfolg";

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
    "blockLabel": m0,
    "borderRadiusButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Abgerundete Ecken",
    ),
    "borderSideButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Rahmenlinie",
    ),
    "coreSerial": MessageLookupByLibrary.simpleMessage("Kernseriennummer"),
    "core_filter_search_hint": MessageLookupByLibrary.simpleMessage(
      "Suche nach Kernen oder Missionen...",
    ),
    "core_filter_status_active": MessageLookupByLibrary.simpleMessage("Aktiv"),
    "core_filter_status_all": MessageLookupByLibrary.simpleMessage("Alle"),
    "core_filter_status_inactive": MessageLookupByLibrary.simpleMessage(
      "Inaktiv",
    ),
    "core_filter_status_lost": MessageLookupByLibrary.simpleMessage("Verloren"),
    "core_filter_status_unknown": MessageLookupByLibrary.simpleMessage(
      "Unbekannt",
    ),
    "core_status_active": MessageLookupByLibrary.simpleMessage("aktiv"),
    "core_status_inactive": MessageLookupByLibrary.simpleMessage("inaktiv"),
    "core_status_lost": MessageLookupByLibrary.simpleMessage("verloren"),
    "core_status_unknown": MessageLookupByLibrary.simpleMessage("unbekannt"),
    "coresLabel": MessageLookupByLibrary.simpleMessage("Kerne"),
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
    "daysFromTodayTitle": m1,
    "daysSinceTodayTitle": m2,
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
    "emailsTitle": MessageLookupByLibrary.simpleMessage("E-Mails"),
    "emptyList": MessageLookupByLibrary.simpleMessage("Leere Liste"),
    "enabledButtonTitle": MessageLookupByLibrary.simpleMessage("Aktiviert"),
    "error": MessageLookupByLibrary.simpleMessage("Fehler"),
    "errorLoadingCores": MessageLookupByLibrary.simpleMessage(
      "Fehler beim Laden der Kerne",
    ),
    "firstLaunch": MessageLookupByLibrary.simpleMessage("Erststart"),
    "firstStage": MessageLookupByLibrary.simpleMessage("🚀 Erste Stufe"),
    "flight": MessageLookupByLibrary.simpleMessage("Flug"),
    "flightNumber": m3,
    "gridFins": MessageLookupByLibrary.simpleMessage("Steuergitter"),
    "iconAndPaddingButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Mit Icon & Abstand",
    ),
    "iconButtonTitle": MessageLookupByLibrary.simpleMessage("Mit Icon"),
    "id": MessageLookupByLibrary.simpleMessage("Kennung"),
    "itemDetailsTitle": MessageLookupByLibrary.simpleMessage("Artikeldetails"),
    "itemTitle": m4,
    "itemsTitle": MessageLookupByLibrary.simpleMessage("Beispielartikel"),
    "landing": MessageLookupByLibrary.simpleMessage("Landung"),
    "landingLegs": MessageLookupByLibrary.simpleMessage("Landebeine"),
    "landingSuccess": MessageLookupByLibrary.simpleMessage(
      "Landung erfolgreich",
    ),
    "launch": MessageLookupByLibrary.simpleMessage("Start"),
    "launchSite": MessageLookupByLibrary.simpleMessage("Startplatz"),
    "launchedAt": m5,
    "launchesTitle": MessageLookupByLibrary.simpleMessage("Starts"),
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
    "mass": MessageLookupByLibrary.simpleMessage("Masse"),
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
    "missions": m7,
    "na": MessageLookupByLibrary.simpleMessage("N/V"),
    "nationality": MessageLookupByLibrary.simpleMessage("Nationalität"),
    "newsScreen": MessageLookupByLibrary.simpleMessage("Nachrichten"),
    "noCoresFound": m8,
    "noDetails": MessageLookupByLibrary.simpleMessage(
      "Keine Details verfügbar",
    ),
    "notAvailable": MessageLookupByLibrary.simpleMessage("Nicht verfügbar"),
    "objectivesCompleted": MessageLookupByLibrary.simpleMessage(
      "Ziele erreicht",
    ),
    "objectivesNotMet": MessageLookupByLibrary.simpleMessage(
      "Missionsziele nicht erreicht",
    ),
    "orbit": MessageLookupByLibrary.simpleMessage("Umlaufbahn"),
    "payload": MessageLookupByLibrary.simpleMessage("Nutzlast"),
    "payloadTitle": MessageLookupByLibrary.simpleMessage("Nutzlast"),
    "pressKit": MessageLookupByLibrary.simpleMessage("Pressemappe"),
    "recoveryShips": MessageLookupByLibrary.simpleMessage("Bergungsschiffe"),
    "reddit": MessageLookupByLibrary.simpleMessage("Reddit"),
    "retiredStatus": MessageLookupByLibrary.simpleMessage("Außer Dienst"),
    "retry": MessageLookupByLibrary.simpleMessage("Erneut versuchen"),
    "reused": MessageLookupByLibrary.simpleMessage("Wiederverwendet"),
    "reuses": m9,
    "rocket": m10,
    "rocketBlock": MessageLookupByLibrary.simpleMessage("Block"),
    "rocketDetails": MessageLookupByLibrary.simpleMessage("Raketendetails"),
    "rocketName": MessageLookupByLibrary.simpleMessage("Raketenname"),
    "rocketTitle": MessageLookupByLibrary.simpleMessage("Rakete"),
    "rocketType": MessageLookupByLibrary.simpleMessage("Typ"),
    "rocketsTab": MessageLookupByLibrary.simpleMessage("Raketen"),
    "rocketsTitle": MessageLookupByLibrary.simpleMessage("Raketen"),
    "settingsTitle": MessageLookupByLibrary.simpleMessage("Einstellungen"),
    "siteIdLabel": MessageLookupByLibrary.simpleMessage("Standort-ID:"),
    "spaceXCoresTitle": MessageLookupByLibrary.simpleMessage(
      "SpaceX Falcon-Kerne",
    ),
    "staticFireTest": MessageLookupByLibrary.simpleMessage(
      "Statischer Feuertest",
    ),
    "successRate": m11,
    "systemThemeTitle": MessageLookupByLibrary.simpleMessage("Systemdesign"),
    "tabHome": MessageLookupByLibrary.simpleMessage("Startseite"),
    "tabSettings": MessageLookupByLibrary.simpleMessage("Einstellungen"),
    "themeTitle": MessageLookupByLibrary.simpleMessage("Design"),
    "transparentButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Transparent",
    ),
    "tryAgainButton": MessageLookupByLibrary.simpleMessage("Erneut versuchen"),
    "type": MessageLookupByLibrary.simpleMessage("Typ"),
    "unknown": MessageLookupByLibrary.simpleMessage("Unbekannt"),
    "watchVideo": MessageLookupByLibrary.simpleMessage("Video ansehen"),
    "wikipedia": MessageLookupByLibrary.simpleMessage("Wikipedia"),
  };
}
