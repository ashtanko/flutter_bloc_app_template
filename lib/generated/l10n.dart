// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `flutter_bloc_app_template`
  String get appTitle {
    return Intl.message(
      'flutter_bloc_app_template',
      name: 'appTitle',
      desc: 'The title of the application',
      args: [],
    );
  }

  /// `Sample Items`
  String get itemsTitle {
    return Intl.message(
      'Sample Items',
      name: 'itemsTitle',
      desc: 'The title of the sample items',
      args: [],
    );
  }

  /// `Emails`
  String get emailsTitle {
    return Intl.message(
      'Emails',
      name: 'emailsTitle',
      desc: 'The title of the emails screen',
      args: [],
    );
  }

  /// `Launches`
  String get launchesTitle {
    return Intl.message(
      'Launches',
      name: 'launchesTitle',
      desc: 'The title of the launches screen',
      args: [],
    );
  }

  /// `Sample Item {id}`
  String itemTitle(Object id) {
    return Intl.message(
      'Sample Item $id',
      name: 'itemTitle',
      desc: 'The title of the item',
      args: [id],
    );
  }

  /// `Settings`
  String get settingsTitle {
    return Intl.message(
      'Settings',
      name: 'settingsTitle',
      desc: 'The title of the settings',
      args: [],
    );
  }

  /// `Appearance`
  String get appearanceTitle {
    return Intl.message(
      'Appearance',
      name: 'appearanceTitle',
      desc: 'Title for appearance screen',
      args: [],
    );
  }

  /// `Use dynamic colors`
  String get dynamicColorSettingsItemTitle {
    return Intl.message(
      'Use dynamic colors',
      name: 'dynamicColorSettingsItemTitle',
      desc: 'Title for enabling dynamic colors from wallpaper',
      args: [],
    );
  }

  /// `Adapt app colors to your wallpaper`
  String get dynamicColorSettingsItemDescription {
    return Intl.message(
      'Adapt app colors to your wallpaper',
      name: 'dynamicColorSettingsItemDescription',
      desc: 'Description for dynamic color setting',
      args: [],
    );
  }

  /// `Theme mode`
  String get darkThemeSettingsItemTitle {
    return Intl.message(
      'Theme mode',
      name: 'darkThemeSettingsItemTitle',
      desc: 'Title for selecting light/dark/system theme',
      args: [],
    );
  }

  /// `Dark`
  String get darkThemeOnSettingsItemTitle {
    return Intl.message(
      'Dark',
      name: 'darkThemeOnSettingsItemTitle',
      desc: 'Dark theme option',
      args: [],
    );
  }

  /// `Light`
  String get darkThemeOffSettingsItemTitle {
    return Intl.message(
      'Light',
      name: 'darkThemeOffSettingsItemTitle',
      desc: 'Light theme option',
      args: [],
    );
  }

  /// `System default`
  String get darkThemeFollowSystemSettingsItemTitle {
    return Intl.message(
      'System default',
      name: 'darkThemeFollowSystemSettingsItemTitle',
      desc: 'Option to follow system theme',
      args: [],
    );
  }

  /// `Try Again`
  String get tryAgainButton {
    return Intl.message(
      'Try Again',
      name: 'tryAgainButton',
      desc: 'Label for the retry button on error screens',
      args: [],
    );
  }

  /// `Appearance`
  String get appearanceSettingsItem {
    return Intl.message(
      'Appearance',
      name: 'appearanceSettingsItem',
      desc: 'Title for appearance settings item',
      args: [],
    );
  }

  /// `Dark theme dynamic color, languages`
  String get appearanceSettingsItemDescription {
    return Intl.message(
      'Dark theme dynamic color, languages',
      name: 'appearanceSettingsItemDescription',
      desc: 'Description for appearance settings item',
      args: [],
    );
  }

  /// `About`
  String get aboutSettingsItem {
    return Intl.message(
      'About',
      name: 'aboutSettingsItem',
      desc: 'Title for about settings item',
      args: [],
    );
  }

  /// `Version, links, feedback`
  String get aboutSettingsItemDescription {
    return Intl.message(
      'Version, links, feedback',
      name: 'aboutSettingsItemDescription',
      desc: 'Description for about settings item',
      args: [],
    );
  }

  /// `Mission: {mission}`
  String missionTitle(Object mission) {
    return Intl.message(
      'Mission: $mission',
      name: 'missionTitle',
      desc: 'The mission launch item label',
      args: [mission],
    );
  }

  /// `Launched at: {launchedAt}`
  String launchedAt(Object launchedAt) {
    return Intl.message(
      'Launched at: $launchedAt',
      name: 'launchedAt',
      desc: 'Launched at item label',
      args: [launchedAt],
    );
  }

  /// `Rocket: {rocketName} ({rocketType})`
  String rocket(Object rocketName, Object rocketType) {
    return Intl.message(
      'Rocket: $rocketName ($rocketType)',
      name: 'rocket',
      desc: 'Rocket item label',
      args: [rocketName, rocketType],
    );
  }

  /// `{days} days ago`
  String daysSinceTodayTitle(Object days) {
    return Intl.message(
      '$days days ago',
      name: 'daysSinceTodayTitle',
      desc: 'Shows how many days ago from today',
      args: [days],
    );
  }

  /// `In {days} days`
  String daysFromTodayTitle(Object days) {
    return Intl.message(
      'In $days days',
      name: 'daysFromTodayTitle',
      desc: 'Shows how many days from today',
      args: [days],
    );
  }

  /// `Theme`
  String get themeTitle {
    return Intl.message('Theme', name: 'themeTitle', desc: '', args: []);
  }

  /// `System Theme`
  String get systemThemeTitle {
    return Intl.message(
      'System Theme',
      name: 'systemThemeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Light Theme`
  String get lightThemeTitle {
    return Intl.message(
      'Light Theme',
      name: 'lightThemeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Dark Theme`
  String get darkThemeTitle {
    return Intl.message(
      'Dark Theme',
      name: 'darkThemeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Light Gold`
  String get lightGoldThemeTitle {
    return Intl.message(
      'Light Gold',
      name: 'lightGoldThemeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Dark Gold`
  String get darkGoldThemeTitle {
    return Intl.message(
      'Dark Gold',
      name: 'darkGoldThemeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Light Mint`
  String get lightMintThemeTitle {
    return Intl.message(
      'Light Mint',
      name: 'lightMintThemeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mint`
  String get darkMintThemeTitle {
    return Intl.message(
      'Dark Mint',
      name: 'darkMintThemeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Experimental Theme`
  String get experimentalThemeTitle {
    return Intl.message(
      'Experimental Theme',
      name: 'experimentalThemeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Item Details`
  String get itemDetailsTitle {
    return Intl.message(
      'Item Details',
      name: 'itemDetailsTitle',
      desc: 'The title of the Item Details screen',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message('Error', name: 'error', desc: '', args: []);
  }

  /// `Empty list`
  String get emptyList {
    return Intl.message('Empty list', name: 'emptyList', desc: '', args: []);
  }

  /// `Home`
  String get tabHome {
    return Intl.message('Home', name: 'tabHome', desc: '', args: []);
  }

  /// `Settings`
  String get tabSettings {
    return Intl.message('Settings', name: 'tabSettings', desc: '', args: []);
  }

  /// `News`
  String get newsScreen {
    return Intl.message('News', name: 'newsScreen', desc: '', args: []);
  }

  /// `Disabled`
  String get disabledButtonTitle {
    return Intl.message(
      'Disabled',
      name: 'disabledButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Disabled Rounded`
  String get disabledRoundedButtonTitle {
    return Intl.message(
      'Disabled Rounded',
      name: 'disabledRoundedButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Disabled With Icon`
  String get disabledWithIconButtonTitle {
    return Intl.message(
      'Disabled With Icon',
      name: 'disabledWithIconButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enabled`
  String get enabledButtonTitle {
    return Intl.message(
      'Enabled',
      name: 'enabledButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `BorderRadius`
  String get borderRadiusButtonTitle {
    return Intl.message(
      'BorderRadius',
      name: 'borderRadiusButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `BorderSide`
  String get borderSideButtonTitle {
    return Intl.message(
      'BorderSide',
      name: 'borderSideButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `With Icon`
  String get iconButtonTitle {
    return Intl.message(
      'With Icon',
      name: 'iconButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `With Icon Padding`
  String get iconAndPaddingButtonTitle {
    return Intl.message(
      'With Icon Padding',
      name: 'iconAndPaddingButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Transparent`
  String get transparentButtonTitle {
    return Intl.message(
      'Transparent',
      name: 'transparentButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Mission Timeline`
  String get missionTimeline {
    return Intl.message(
      'Mission Timeline',
      name: 'missionTimeline',
      desc: 'The title for the mission timeline card',
      args: [],
    );
  }

  /// `Static Fire Test`
  String get staticFireTest {
    return Intl.message(
      'Static Fire Test',
      name: 'staticFireTest',
      desc: 'Label for the static fire test item in the timeline',
      args: [],
    );
  }

  /// `Launch`
  String get launch {
    return Intl.message(
      'Launch',
      name: 'launch',
      desc: 'Label for the launch item in the timeline',
      args: [],
    );
  }

  /// `Mission Success`
  String get missionSuccess {
    return Intl.message(
      'Mission Success',
      name: 'missionSuccess',
      desc: 'Label for the mission success item in the timeline',
      args: [],
    );
  }

  /// `Objectives Completed`
  String get objectivesCompleted {
    return Intl.message(
      'Objectives Completed',
      name: 'objectivesCompleted',
      desc: 'Subtitle for mission success item',
      args: [],
    );
  }

  /// `Mission Successful`
  String get missionSuccessful {
    return Intl.message(
      'Mission Successful',
      name: 'missionSuccessful',
      desc: 'Displayed when the mission has succeeded',
      args: [],
    );
  }

  /// `Mission Failed`
  String get missionFailed {
    return Intl.message(
      'Mission Failed',
      name: 'missionFailed',
      desc: 'Displayed when the mission has failed',
      args: [],
    );
  }

  /// `All objectives completed`
  String get allObjectivesCompleted {
    return Intl.message(
      'All objectives completed',
      name: 'allObjectivesCompleted',
      desc: 'Subtitle when mission succeeded',
      args: [],
    );
  }

  /// `Mission objectives not met`
  String get objectivesNotMet {
    return Intl.message(
      'Mission objectives not met',
      name: 'objectivesNotMet',
      desc: 'Subtitle when mission failed',
      args: [],
    );
  }

  /// `Rocket`
  String get rocketTitle {
    return Intl.message(
      'Rocket',
      name: 'rocketTitle',
      desc: 'Label for the rocket stat card',
      args: [],
    );
  }

  /// `Payload`
  String get payload {
    return Intl.message(
      'Payload',
      name: 'payload',
      desc: 'Label for the payload stat card',
      args: [],
    );
  }

  /// `Orbit`
  String get orbit {
    return Intl.message(
      'Orbit',
      name: 'orbit',
      desc: 'Label for the orbit stat card',
      args: [],
    );
  }

  /// `Rocket Details`
  String get rocketDetails {
    return Intl.message(
      'Rocket Details',
      name: 'rocketDetails',
      desc: 'Title for the rocket card section',
      args: [],
    );
  }

  /// `Rocket Name`
  String get rocketName {
    return Intl.message(
      'Rocket Name',
      name: 'rocketName',
      desc: 'Label for rocket name in rocket details',
      args: [],
    );
  }

  /// `Type`
  String get rocketType {
    return Intl.message(
      'Type',
      name: 'rocketType',
      desc: 'Label for rocket type in rocket details',
      args: [],
    );
  }

  /// `Block`
  String get rocketBlock {
    return Intl.message(
      'Block',
      name: 'rocketBlock',
      desc: 'Label for rocket block number',
      args: [],
    );
  }

  /// `🚀 First Stage`
  String get firstStage {
    return Intl.message(
      '🚀 First Stage',
      name: 'firstStage',
      desc: 'Title for the first stage details',
      args: [],
    );
  }

  /// `Core Serial`
  String get coreSerial {
    return Intl.message(
      'Core Serial',
      name: 'coreSerial',
      desc: 'Label for the core serial number',
      args: [],
    );
  }

  /// `Flight`
  String get flight {
    return Intl.message(
      'Flight',
      name: 'flight',
      desc: 'Label for flight number',
      args: [],
    );
  }

  /// `Landing`
  String get landing {
    return Intl.message(
      'Landing',
      name: 'landing',
      desc: 'Label for landing type',
      args: [],
    );
  }

  /// `Landing Success`
  String get landingSuccess {
    return Intl.message(
      'Landing Success',
      name: 'landingSuccess',
      desc: 'Label for landing success indicator',
      args: [],
    );
  }

  /// `Grid Fins`
  String get gridFins {
    return Intl.message(
      'Grid Fins',
      name: 'gridFins',
      desc: 'Label for grid fins feature',
      args: [],
    );
  }

  /// `Landing Legs`
  String get landingLegs {
    return Intl.message(
      'Landing Legs',
      name: 'landingLegs',
      desc: 'Label for landing legs feature',
      args: [],
    );
  }

  /// `Reused`
  String get reused {
    return Intl.message(
      'Reused',
      name: 'reused',
      desc: 'Label for reused feature',
      args: [],
    );
  }

  /// `N/A`
  String get notAvailable {
    return Intl.message(
      'N/A',
      name: 'notAvailable',
      desc: 'Displayed when data is not available',
      args: [],
    );
  }

  /// `Recovery Ships`
  String get recoveryShips {
    return Intl.message(
      'Recovery Ships',
      name: 'recoveryShips',
      desc: 'Title for the recovery ships section',
      args: [],
    );
  }

  /// `Payload`
  String get payloadTitle {
    return Intl.message(
      'Payload',
      name: 'payloadTitle',
      desc: 'Title of the payload section',
      args: [],
    );
  }

  /// `ID`
  String get id {
    return Intl.message(
      'ID',
      name: 'id',
      desc: 'Label for payload ID',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message(
      'Type',
      name: 'type',
      desc: 'Label for payload type',
      args: [],
    );
  }

  /// `Mass`
  String get mass {
    return Intl.message(
      'Mass',
      name: 'mass',
      desc: 'Label for payload mass',
      args: [],
    );
  }

  /// `Manufacturer`
  String get manufacturer {
    return Intl.message(
      'Manufacturer',
      name: 'manufacturer',
      desc: 'Label for payload manufacturer',
      args: [],
    );
  }

  /// `Nationality`
  String get nationality {
    return Intl.message(
      'Nationality',
      name: 'nationality',
      desc: 'Label for payload nationality',
      args: [],
    );
  }

  /// `Customers`
  String get customers {
    return Intl.message(
      'Customers',
      name: 'customers',
      desc: 'Label for payload customers',
      args: [],
    );
  }

  /// `Mission Overview`
  String get missionOverview {
    return Intl.message(
      'Mission Overview',
      name: 'missionOverview',
      desc: 'Title for the mission overview section',
      args: [],
    );
  }

  /// `No details available`
  String get noDetails {
    return Intl.message(
      'No details available',
      name: 'noDetails',
      desc: 'Displayed when no mission details are provided',
      args: [],
    );
  }

  /// `Links & Resources`
  String get linksResources {
    return Intl.message(
      'Links & Resources',
      name: 'linksResources',
      desc: 'Title for links and resources section',
      args: [],
    );
  }

  /// `Watch Video`
  String get watchVideo {
    return Intl.message(
      'Watch Video',
      name: 'watchVideo',
      desc: 'Button label to watch video',
      args: [],
    );
  }

  /// `Wikipedia`
  String get wikipedia {
    return Intl.message(
      'Wikipedia',
      name: 'wikipedia',
      desc: 'Button label for Wikipedia link',
      args: [],
    );
  }

  /// `Article`
  String get article {
    return Intl.message(
      'Article',
      name: 'article',
      desc: 'Button label for article link',
      args: [],
    );
  }

  /// `Reddit`
  String get reddit {
    return Intl.message(
      'Reddit',
      name: 'reddit',
      desc: 'Button label for Reddit discussion',
      args: [],
    );
  }

  /// `Press Kit`
  String get pressKit {
    return Intl.message(
      'Press Kit',
      name: 'pressKit',
      desc: 'Button label for press kit link',
      args: [],
    );
  }

  /// `Launch Site`
  String get launchSite {
    return Intl.message(
      'Launch Site',
      name: 'launchSite',
      desc: 'Title for the launch site section',
      args: [],
    );
  }

  /// `Site ID:`
  String get siteIdLabel {
    return Intl.message(
      'Site ID:',
      name: 'siteIdLabel',
      desc: 'Label for site ID',
      args: [],
    );
  }

  /// `Flight #{number}`
  String flightNumber(Object number) {
    return Intl.message(
      'Flight #$number',
      name: 'flightNumber',
      desc: 'Label for the flight number',
      args: [number],
    );
  }

  /// `Rockets`
  String get rocketsTab {
    return Intl.message(
      'Rockets',
      name: 'rocketsTab',
      desc: 'The title of the Rockets tab',
      args: [],
    );
  }

  /// `Active`
  String get activeStatus {
    return Intl.message(
      'Active',
      name: 'activeStatus',
      desc: 'Label for active rocket',
      args: [],
    );
  }

  /// `Retired`
  String get retiredStatus {
    return Intl.message(
      'Retired',
      name: 'retiredStatus',
      desc: 'Label for retired rocket',
      args: [],
    );
  }

  /// `{percentage}% success`
  String successRate(Object percentage) {
    return Intl.message(
      '$percentage% success',
      name: 'successRate',
      desc: 'Label for rocket success rate with percentage',
      args: [percentage],
    );
  }

  /// `Rockets`
  String get rocketsTitle {
    return Intl.message(
      'Rockets',
      name: 'rocketsTitle',
      desc: 'The title of the Rockets screen',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'pt'),
      Locale.fromSubtags(languageCode: 'uk'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
