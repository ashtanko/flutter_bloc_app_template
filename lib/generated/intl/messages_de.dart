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

  static String m2(id) => "Beispielartikel ${id}";

  static String m3(launchedAt) => "Gestartet am: ${launchedAt}";

  static String m4(mission) => "Mission: ${mission}";

  static String m5(rocketName, rocketType) =>
      "Rakete: ${rocketName} (${rocketType})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutSettingsItem": MessageLookupByLibrary.simpleMessage("About"),
    "aboutSettingsItemDescription": MessageLookupByLibrary.simpleMessage(
      "Version, links, feedback",
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
    "borderRadiusButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Abgerundete Ecken",
    ),
    "borderSideButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Rahmenlinie",
    ),
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
    "iconAndPaddingButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Mit Icon & Abstand",
    ),
    "iconButtonTitle": MessageLookupByLibrary.simpleMessage("Mit Icon"),
    "itemDetailsTitle": MessageLookupByLibrary.simpleMessage("Artikeldetails"),
    "itemTitle": m2,
    "itemsTitle": MessageLookupByLibrary.simpleMessage("Beispielartikel"),
    "launchedAt": m3,
    "launchesTitle": MessageLookupByLibrary.simpleMessage("Starts"),
    "lightGoldThemeTitle": MessageLookupByLibrary.simpleMessage(
      "Helles Gold-Design",
    ),
    "lightMintThemeTitle": MessageLookupByLibrary.simpleMessage(
      "Helles Mint-Design",
    ),
    "lightThemeTitle": MessageLookupByLibrary.simpleMessage("Helles Design"),
    "missionTitle": m4,
    "newsScreen": MessageLookupByLibrary.simpleMessage("Nachrichten"),
    "rocket": m5,
    "settingsTitle": MessageLookupByLibrary.simpleMessage("Einstellungen"),
    "systemThemeTitle": MessageLookupByLibrary.simpleMessage("Systemdesign"),
    "tabHome": MessageLookupByLibrary.simpleMessage("Startseite"),
    "tabSettings": MessageLookupByLibrary.simpleMessage("Einstellungen"),
    "themeTitle": MessageLookupByLibrary.simpleMessage("Design"),
    "transparentButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Transparent",
    ),
    "tryAgainButton": MessageLookupByLibrary.simpleMessage("Erneut versuchen"),
  };
}
