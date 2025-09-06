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

  static String m2(number) => "Flight #${number}";

  static String m3(id) => "Sample Item ${id}";

  static String m4(launchedAt) => "Launched at: ${launchedAt}";

  static String m5(mission) => "Mission: ${mission}";

  static String m6(rocketName, rocketType) =>
      "Rocket: ${rocketName} (${rocketType})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutSettingsItem": MessageLookupByLibrary.simpleMessage("About"),
    "aboutSettingsItemDescription": MessageLookupByLibrary.simpleMessage(
      "Version, links, feedback",
    ),
    "allObjectivesCompleted": MessageLookupByLibrary.simpleMessage(
      "All objectives completed",
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
    "appearanceTitle": MessageLookupByLibrary.simpleMessage("Appearance"),
    "article": MessageLookupByLibrary.simpleMessage("Article"),
    "borderRadiusButtonTitle": MessageLookupByLibrary.simpleMessage(
      "BorderRadius",
    ),
    "borderSideButtonTitle": MessageLookupByLibrary.simpleMessage("BorderSide"),
    "coreSerial": MessageLookupByLibrary.simpleMessage("Core Serial"),
    "customers": MessageLookupByLibrary.simpleMessage("Customers"),
    "darkGoldThemeTitle": MessageLookupByLibrary.simpleMessage("Dark Gold"),
    "darkMintThemeTitle": MessageLookupByLibrary.simpleMessage("Dark Mint"),
    "darkThemeFollowSystemSettingsItemTitle":
        MessageLookupByLibrary.simpleMessage("System default"),
    "darkThemeOffSettingsItemTitle": MessageLookupByLibrary.simpleMessage(
      "Light",
    ),
    "darkThemeOnSettingsItemTitle": MessageLookupByLibrary.simpleMessage(
      "Dark",
    ),
    "darkThemeSettingsItemTitle": MessageLookupByLibrary.simpleMessage(
      "Theme mode",
    ),
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
    "dynamicColorSettingsItemDescription": MessageLookupByLibrary.simpleMessage(
      "Adapt app colors to your wallpaper",
    ),
    "dynamicColorSettingsItemTitle": MessageLookupByLibrary.simpleMessage(
      "Use dynamic colors",
    ),
    "emailsTitle": MessageLookupByLibrary.simpleMessage("Emails"),
    "emptyList": MessageLookupByLibrary.simpleMessage("Empty list"),
    "enabledButtonTitle": MessageLookupByLibrary.simpleMessage("Enabled"),
    "error": MessageLookupByLibrary.simpleMessage("Error"),
    "experimentalThemeTitle": MessageLookupByLibrary.simpleMessage(
      "Experimental Theme",
    ),
    "firstStage": MessageLookupByLibrary.simpleMessage("🚀 First Stage"),
    "flight": MessageLookupByLibrary.simpleMessage("Flight"),
    "flightNumber": m2,
    "gridFins": MessageLookupByLibrary.simpleMessage("Grid Fins"),
    "iconAndPaddingButtonTitle": MessageLookupByLibrary.simpleMessage(
      "With Icon Padding",
    ),
    "iconButtonTitle": MessageLookupByLibrary.simpleMessage("With Icon"),
    "id": MessageLookupByLibrary.simpleMessage("ID"),
    "itemDetailsTitle": MessageLookupByLibrary.simpleMessage("Item Details"),
    "itemTitle": m3,
    "itemsTitle": MessageLookupByLibrary.simpleMessage("Sample Items"),
    "landing": MessageLookupByLibrary.simpleMessage("Landing"),
    "landingLegs": MessageLookupByLibrary.simpleMessage("Landing Legs"),
    "landingSuccess": MessageLookupByLibrary.simpleMessage("Landing Success"),
    "launch": MessageLookupByLibrary.simpleMessage("Launch"),
    "launchSite": MessageLookupByLibrary.simpleMessage("Launch Site"),
    "launchedAt": m4,
    "launchesTitle": MessageLookupByLibrary.simpleMessage("Launches"),
    "lightGoldThemeTitle": MessageLookupByLibrary.simpleMessage("Light Gold"),
    "lightMintThemeTitle": MessageLookupByLibrary.simpleMessage("Light Mint"),
    "lightThemeTitle": MessageLookupByLibrary.simpleMessage("Light Theme"),
    "linksResources": MessageLookupByLibrary.simpleMessage("Links & Resources"),
    "manufacturer": MessageLookupByLibrary.simpleMessage("Manufacturer"),
    "mass": MessageLookupByLibrary.simpleMessage("Mass"),
    "missionFailed": MessageLookupByLibrary.simpleMessage("Mission Failed"),
    "missionOverview": MessageLookupByLibrary.simpleMessage("Mission Overview"),
    "missionSuccess": MessageLookupByLibrary.simpleMessage("Mission Success"),
    "missionSuccessful": MessageLookupByLibrary.simpleMessage(
      "Mission Successful",
    ),
    "missionTimeline": MessageLookupByLibrary.simpleMessage("Mission Timeline"),
    "missionTitle": m5,
    "nationality": MessageLookupByLibrary.simpleMessage("Nationality"),
    "newsScreen": MessageLookupByLibrary.simpleMessage("News"),
    "noDetails": MessageLookupByLibrary.simpleMessage("No details available"),
    "notAvailable": MessageLookupByLibrary.simpleMessage("N/A"),
    "objectivesCompleted": MessageLookupByLibrary.simpleMessage(
      "Objectives Completed",
    ),
    "objectivesNotMet": MessageLookupByLibrary.simpleMessage(
      "Mission objectives not met",
    ),
    "orbit": MessageLookupByLibrary.simpleMessage("Orbit"),
    "payload": MessageLookupByLibrary.simpleMessage("Payload"),
    "payloadTitle": MessageLookupByLibrary.simpleMessage("Payload"),
    "pressKit": MessageLookupByLibrary.simpleMessage("Press Kit"),
    "recoveryShips": MessageLookupByLibrary.simpleMessage("Recovery Ships"),
    "reddit": MessageLookupByLibrary.simpleMessage("Reddit"),
    "reused": MessageLookupByLibrary.simpleMessage("Reused"),
    "rocket": m6,
    "rocketBlock": MessageLookupByLibrary.simpleMessage("Block"),
    "rocketDetails": MessageLookupByLibrary.simpleMessage("Rocket Details"),
    "rocketName": MessageLookupByLibrary.simpleMessage("Rocket Name"),
    "rocketTitle": MessageLookupByLibrary.simpleMessage("Rocket"),
    "rocketType": MessageLookupByLibrary.simpleMessage("Type"),
    "settingsTitle": MessageLookupByLibrary.simpleMessage("Settings"),
    "siteIdLabel": MessageLookupByLibrary.simpleMessage("Site ID:"),
    "staticFireTest": MessageLookupByLibrary.simpleMessage("Static Fire Test"),
    "systemThemeTitle": MessageLookupByLibrary.simpleMessage("System Theme"),
    "tabHome": MessageLookupByLibrary.simpleMessage("Home"),
    "tabSettings": MessageLookupByLibrary.simpleMessage("Settings"),
    "themeTitle": MessageLookupByLibrary.simpleMessage("Theme"),
    "transparentButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Transparent",
    ),
    "tryAgainButton": MessageLookupByLibrary.simpleMessage("Try Again"),
    "type": MessageLookupByLibrary.simpleMessage("Type"),
    "watchVideo": MessageLookupByLibrary.simpleMessage("Watch Video"),
    "wikipedia": MessageLookupByLibrary.simpleMessage("Wikipedia"),
  };
}
