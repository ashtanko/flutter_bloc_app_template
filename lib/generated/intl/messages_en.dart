// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(days) => "In ${days} days";

  static String m1(days) => "${days} days ago";

  static String m2(id) => "Sample Item ${id}";

  static String m3(launchedAt) => "Launched at: ${launchedAt}";

  static String m4(mission) => "Mission: ${mission}";

  static String m5(rocketName, rocketType) =>
      "Rocket: ${rocketName} (${rocketType})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "appTitle": MessageLookupByLibrary.simpleMessage(
      "flutter_bloc_app_template",
    ),
    "borderRadiusButtonTitle": MessageLookupByLibrary.simpleMessage(
      "BorderRadius",
    ),
    "borderSideButtonTitle": MessageLookupByLibrary.simpleMessage("BorderSide"),
    "darkGoldThemeTitle": MessageLookupByLibrary.simpleMessage("Dark Gold"),
    "darkMintThemeTitle": MessageLookupByLibrary.simpleMessage("Dark Mint"),
    "darkThemeTitle": MessageLookupByLibrary.simpleMessage("Dark Theme"),
    "daysFromTodayTitle": m0,
    "daysSinceTodayTitle": m1,
    "disabledButtonTitle": MessageLookupByLibrary.simpleMessage("Disabled"),
    "disabledRoundedButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Disabled Rounded",
    ),
    "disabledWithIconButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Disabled With Icon",
    ),
    "emailsTitle": MessageLookupByLibrary.simpleMessage("Emails"),
    "emptyList": MessageLookupByLibrary.simpleMessage("Empty list"),
    "enabledButtonTitle": MessageLookupByLibrary.simpleMessage("Enabled"),
    "error": MessageLookupByLibrary.simpleMessage("Error"),
    "experimentalThemeTitle": MessageLookupByLibrary.simpleMessage(
      "Experimental Theme",
    ),
    "iconAndPaddingButtonTitle": MessageLookupByLibrary.simpleMessage(
      "With Icon Padding",
    ),
    "iconButtonTitle": MessageLookupByLibrary.simpleMessage("With Icon"),
    "itemDetailsTitle": MessageLookupByLibrary.simpleMessage("Item Details"),
    "itemTitle": m2,
    "itemsTitle": MessageLookupByLibrary.simpleMessage("Sample Items"),
    "launchedAt": m3,
    "launchesTitle": MessageLookupByLibrary.simpleMessage("Launches"),
    "lightGoldThemeTitle": MessageLookupByLibrary.simpleMessage("Light Gold"),
    "lightMintThemeTitle": MessageLookupByLibrary.simpleMessage("Light Mint"),
    "lightThemeTitle": MessageLookupByLibrary.simpleMessage("Light Theme"),
    "missionTitle": m4,
    "newsScreen": MessageLookupByLibrary.simpleMessage("News"),
    "rocket": m5,
    "settingsTitle": MessageLookupByLibrary.simpleMessage("Settings"),
    "systemThemeTitle": MessageLookupByLibrary.simpleMessage("System Theme"),
    "tabHome": MessageLookupByLibrary.simpleMessage("Home"),
    "tabSettings": MessageLookupByLibrary.simpleMessage("Settings"),
    "themeTitle": MessageLookupByLibrary.simpleMessage("Theme"),
    "transparentButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Transparent",
    ),
  };
}
