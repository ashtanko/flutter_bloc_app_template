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

  static String m8(blockNumber) => "Block ${blockNumber}";

  static String m0(days) => "In ${days} days";

  static String m1(days) => "${days} days ago";

  static String m2(number) => "Flight #${number}";

  static String m3(id) => "Sample Item ${id}";

  static String m4(launchedAt) => "Launched at: ${launchedAt}";

  static String m5(mission) => "Mission: ${mission}";

  static String m9(count) => "${count} missions";

  static String m10(query) => "No cores found for \"${query}\"";

  static String m11(count) => "${count} reuses";

  static String m6(rocketName, rocketType) =>
      "Rocket: ${rocketName} (${rocketType})";

  static String m7(percentage) => "${percentage}% success";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutSettingsItem": MessageLookupByLibrary.simpleMessage("About"),
    "aboutSettingsItemDescription": MessageLookupByLibrary.simpleMessage(
      "Version, links, feedback",
    ),
    "activeStatus": MessageLookupByLibrary.simpleMessage("Active"),
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
    "blockLabel": m8,
    "borderRadiusButtonTitle": MessageLookupByLibrary.simpleMessage(
      "BorderRadius",
    ),
    "borderSideButtonTitle": MessageLookupByLibrary.simpleMessage("BorderSide"),
    "coreSerial": MessageLookupByLibrary.simpleMessage("Core Serial"),
    "core_filter_search_hint": MessageLookupByLibrary.simpleMessage(
      "Search cores or missions...",
    ),
    "core_filter_status_active": MessageLookupByLibrary.simpleMessage("Active"),
    "core_filter_status_all": MessageLookupByLibrary.simpleMessage("All"),
    "core_filter_status_inactive": MessageLookupByLibrary.simpleMessage(
      "Inactive",
    ),
    "core_filter_status_lost": MessageLookupByLibrary.simpleMessage("Lost"),
    "core_filter_status_unknown": MessageLookupByLibrary.simpleMessage(
      "Unknown",
    ),
    "core_status_active": MessageLookupByLibrary.simpleMessage("active"),
    "core_status_inactive": MessageLookupByLibrary.simpleMessage("inactive"),
    "core_status_lost": MessageLookupByLibrary.simpleMessage("lost"),
    "core_status_unknown": MessageLookupByLibrary.simpleMessage("unknown"),
    "coresLabel": MessageLookupByLibrary.simpleMessage("Cores"),
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
    "diameterLabel": MessageLookupByLibrary.simpleMessage("Diameter"),
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
    "engineDetails": MessageLookupByLibrary.simpleMessage("Engine Details"),
    "error": MessageLookupByLibrary.simpleMessage("Error"),
    "errorLoadingCores": MessageLookupByLibrary.simpleMessage(
      "Error loading cores",
    ),
    "experimentalThemeTitle": MessageLookupByLibrary.simpleMessage(
      "Experimental Theme",
    ),
    "firstLaunch": MessageLookupByLibrary.simpleMessage("First Launch"),
    "firstStage": MessageLookupByLibrary.simpleMessage("🚀 First Stage"),
    "flight": MessageLookupByLibrary.simpleMessage("Flight"),
    "flightNumber": m2,
    "gridFins": MessageLookupByLibrary.simpleMessage("Grid Fins"),
    "heightLabel": MessageLookupByLibrary.simpleMessage("Height"),
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
    "massLabel": MessageLookupByLibrary.simpleMessage("Mass"),
    "missionFailed": MessageLookupByLibrary.simpleMessage("Mission Failed"),
    "missionOverview": MessageLookupByLibrary.simpleMessage("Mission Overview"),
    "missionSuccess": MessageLookupByLibrary.simpleMessage("Mission Success"),
    "missionSuccessful": MessageLookupByLibrary.simpleMessage(
      "Mission Successful",
    ),
    "missionTimeline": MessageLookupByLibrary.simpleMessage("Mission Timeline"),
    "missionTitle": m5,
    "missions": m9,
    "na": MessageLookupByLibrary.simpleMessage("N/A"),
    "nationality": MessageLookupByLibrary.simpleMessage("Nationality"),
    "newsScreen": MessageLookupByLibrary.simpleMessage("News"),
    "noCoresFound": m10,
    "noDetails": MessageLookupByLibrary.simpleMessage("No details available"),
    "notAvailable": MessageLookupByLibrary.simpleMessage("N/A"),
    "numberLabel": MessageLookupByLibrary.simpleMessage("Number"),
    "objectivesCompleted": MessageLookupByLibrary.simpleMessage(
      "Objectives Completed",
    ),
    "objectivesNotMet": MessageLookupByLibrary.simpleMessage(
      "Mission objectives not met",
    ),
    "orbit": MessageLookupByLibrary.simpleMessage("Orbit"),
    "overview": MessageLookupByLibrary.simpleMessage("Overview"),
    "payload": MessageLookupByLibrary.simpleMessage("Payload"),
    "payloadCapacity": MessageLookupByLibrary.simpleMessage("Payload Capacity"),
    "payloadTitle": MessageLookupByLibrary.simpleMessage("Payload"),
    "pressKit": MessageLookupByLibrary.simpleMessage("Press Kit"),
    "propellant1Label": MessageLookupByLibrary.simpleMessage("Propellant 1"),
    "propellant2Label": MessageLookupByLibrary.simpleMessage("Propellant 2"),
    "recoveryShips": MessageLookupByLibrary.simpleMessage("Recovery Ships"),
    "reddit": MessageLookupByLibrary.simpleMessage("Reddit"),
    "retiredStatus": MessageLookupByLibrary.simpleMessage("Retired"),
    "retry": MessageLookupByLibrary.simpleMessage("Retry"),
    "reused": MessageLookupByLibrary.simpleMessage("Reused"),
    "reuses": m11,
    "rocket": m6,
    "rocketBlock": MessageLookupByLibrary.simpleMessage("Block"),
    "rocketDetails": MessageLookupByLibrary.simpleMessage("Rocket Details"),
    "rocketName": MessageLookupByLibrary.simpleMessage("Rocket Name"),
    "rocketTitle": MessageLookupByLibrary.simpleMessage("Rocket"),
    "rocketType": MessageLookupByLibrary.simpleMessage("Type"),
    "rocketsTab": MessageLookupByLibrary.simpleMessage("Rockets"),
    "rocketsTitle": MessageLookupByLibrary.simpleMessage("Rockets"),
    "settingsTitle": MessageLookupByLibrary.simpleMessage("Settings"),
    "siteIdLabel": MessageLookupByLibrary.simpleMessage("Site ID:"),
    "spaceXCoresTitle": MessageLookupByLibrary.simpleMessage(
      "SpaceX Falcon Cores",
    ),
    "specifications": MessageLookupByLibrary.simpleMessage("Specifications"),
    "stagesLabel": MessageLookupByLibrary.simpleMessage("Stages"),
    "staticFireTest": MessageLookupByLibrary.simpleMessage("Static Fire Test"),
    "successRate": m7,
    "systemThemeTitle": MessageLookupByLibrary.simpleMessage("System Theme"),
    "tabHome": MessageLookupByLibrary.simpleMessage("Home"),
    "tabSettings": MessageLookupByLibrary.simpleMessage("Settings"),
    "themeTitle": MessageLookupByLibrary.simpleMessage("Theme"),
    "thrustSeaLevelLabel": MessageLookupByLibrary.simpleMessage(
      "Thrust (Sea Level)",
    ),
    "tons": MessageLookupByLibrary.simpleMessage("tons"),
    "transparentButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Transparent",
    ),
    "tryAgainButton": MessageLookupByLibrary.simpleMessage("Try Again"),
    "type": MessageLookupByLibrary.simpleMessage("Type"),
    "typeLabel": MessageLookupByLibrary.simpleMessage("Type"),
    "unknown": MessageLookupByLibrary.simpleMessage("Unknown"),
    "versionLabel": MessageLookupByLibrary.simpleMessage("Version"),
    "watchVideo": MessageLookupByLibrary.simpleMessage("Watch Video"),
    "wikipedia": MessageLookupByLibrary.simpleMessage("Wikipedia"),
  };
}
