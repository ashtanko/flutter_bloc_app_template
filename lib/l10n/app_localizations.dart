import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_uk.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('pt'),
    Locale('uk')
  ];

  /// The title of the application
  ///
  /// In en, this message translates to:
  /// **'flutter_bloc_app_template'**
  String get appTitle;

  /// The title of the sample items
  ///
  /// In en, this message translates to:
  /// **'Sample Items'**
  String get itemsTitle;

  /// The title of the emails screen
  ///
  /// In en, this message translates to:
  /// **'Emails'**
  String get emailsTitle;

  /// The title of the launches screen
  ///
  /// In en, this message translates to:
  /// **'Launches'**
  String get launchesTitle;

  /// The title of the item
  ///
  /// In en, this message translates to:
  /// **'Sample Item {id}'**
  String itemTitle(Object id);

  /// The title of the settings
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// Title for appearance screen
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearanceTitle;

  /// Title for enabling dynamic colors from wallpaper
  ///
  /// In en, this message translates to:
  /// **'Use dynamic colors'**
  String get dynamicColorSettingsItemTitle;

  /// Description for dynamic color setting
  ///
  /// In en, this message translates to:
  /// **'Adapt app colors to your wallpaper'**
  String get dynamicColorSettingsItemDescription;

  /// Title for selecting light/dark/system theme
  ///
  /// In en, this message translates to:
  /// **'Theme mode'**
  String get darkThemeSettingsItemTitle;

  /// Dark theme option
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get darkThemeOnSettingsItemTitle;

  /// Light theme option
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get darkThemeOffSettingsItemTitle;

  /// Option to follow system theme
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get darkThemeFollowSystemSettingsItemTitle;

  /// Label for the retry button on error screens
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get tryAgainButton;

  /// Title for appearance settings item
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearanceSettingsItem;

  /// Description for appearance settings item
  ///
  /// In en, this message translates to:
  /// **'Dark theme dynamic color, languages'**
  String get appearanceSettingsItemDescription;

  /// Title for about settings item
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutSettingsItem;

  /// Description for about settings item
  ///
  /// In en, this message translates to:
  /// **'Version, links, feedback'**
  String get aboutSettingsItemDescription;

  /// The mission launch item label
  ///
  /// In en, this message translates to:
  /// **'Mission: {mission}'**
  String missionTitle(Object mission);

  /// Launched at item label
  ///
  /// In en, this message translates to:
  /// **'Launched at: {launchedAt}'**
  String launchedAt(Object launchedAt);

  /// Rocket item label
  ///
  /// In en, this message translates to:
  /// **'Rocket: {rocketName} ({rocketType})'**
  String rocket(Object rocketName, Object rocketType);

  /// Shows how many days ago from today
  ///
  /// In en, this message translates to:
  /// **'{days} days ago'**
  String daysSinceTodayTitle(Object days);

  /// Shows how many days from today
  ///
  /// In en, this message translates to:
  /// **'In {days} days'**
  String daysFromTodayTitle(Object days);

  /// No description provided for @themeTitle.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get themeTitle;

  /// No description provided for @systemThemeTitle.
  ///
  /// In en, this message translates to:
  /// **'System Theme'**
  String get systemThemeTitle;

  /// No description provided for @lightThemeTitle.
  ///
  /// In en, this message translates to:
  /// **'Light Theme'**
  String get lightThemeTitle;

  /// No description provided for @darkThemeTitle.
  ///
  /// In en, this message translates to:
  /// **'Dark Theme'**
  String get darkThemeTitle;

  /// No description provided for @lightGoldThemeTitle.
  ///
  /// In en, this message translates to:
  /// **'Light Gold'**
  String get lightGoldThemeTitle;

  /// No description provided for @darkGoldThemeTitle.
  ///
  /// In en, this message translates to:
  /// **'Dark Gold'**
  String get darkGoldThemeTitle;

  /// No description provided for @lightMintThemeTitle.
  ///
  /// In en, this message translates to:
  /// **'Light Mint'**
  String get lightMintThemeTitle;

  /// No description provided for @darkMintThemeTitle.
  ///
  /// In en, this message translates to:
  /// **'Dark Mint'**
  String get darkMintThemeTitle;

  /// No description provided for @experimentalThemeTitle.
  ///
  /// In en, this message translates to:
  /// **'Experimental Theme'**
  String get experimentalThemeTitle;

  /// The title of the Item Details screen
  ///
  /// In en, this message translates to:
  /// **'Item Details'**
  String get itemDetailsTitle;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @emptyList.
  ///
  /// In en, this message translates to:
  /// **'Empty list'**
  String get emptyList;

  /// No description provided for @tabHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get tabHome;

  /// No description provided for @tabSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get tabSettings;

  /// No description provided for @newsScreen.
  ///
  /// In en, this message translates to:
  /// **'News'**
  String get newsScreen;

  /// No description provided for @disabledButtonTitle.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get disabledButtonTitle;

  /// No description provided for @disabledRoundedButtonTitle.
  ///
  /// In en, this message translates to:
  /// **'Disabled Rounded'**
  String get disabledRoundedButtonTitle;

  /// No description provided for @disabledWithIconButtonTitle.
  ///
  /// In en, this message translates to:
  /// **'Disabled With Icon'**
  String get disabledWithIconButtonTitle;

  /// No description provided for @enabledButtonTitle.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get enabledButtonTitle;

  /// No description provided for @borderRadiusButtonTitle.
  ///
  /// In en, this message translates to:
  /// **'BorderRadius'**
  String get borderRadiusButtonTitle;

  /// No description provided for @borderSideButtonTitle.
  ///
  /// In en, this message translates to:
  /// **'BorderSide'**
  String get borderSideButtonTitle;

  /// No description provided for @iconButtonTitle.
  ///
  /// In en, this message translates to:
  /// **'With Icon'**
  String get iconButtonTitle;

  /// No description provided for @iconAndPaddingButtonTitle.
  ///
  /// In en, this message translates to:
  /// **'With Icon Padding'**
  String get iconAndPaddingButtonTitle;

  /// No description provided for @transparentButtonTitle.
  ///
  /// In en, this message translates to:
  /// **'Transparent'**
  String get transparentButtonTitle;

  /// The title for the mission timeline card
  ///
  /// In en, this message translates to:
  /// **'Mission Timeline'**
  String get missionTimeline;

  /// Label for the static fire test item in the timeline
  ///
  /// In en, this message translates to:
  /// **'Static Fire Test'**
  String get staticFireTest;

  /// Label for the launch item in the timeline
  ///
  /// In en, this message translates to:
  /// **'Launch'**
  String get launch;

  /// Label for the mission success item in the timeline
  ///
  /// In en, this message translates to:
  /// **'Mission Success'**
  String get missionSuccess;

  /// Subtitle for mission success item
  ///
  /// In en, this message translates to:
  /// **'Objectives Completed'**
  String get objectivesCompleted;

  /// Displayed when the mission has succeeded
  ///
  /// In en, this message translates to:
  /// **'Mission Successful'**
  String get missionSuccessful;

  /// Displayed when the mission has failed
  ///
  /// In en, this message translates to:
  /// **'Mission Failed'**
  String get missionFailed;

  /// Subtitle when mission succeeded
  ///
  /// In en, this message translates to:
  /// **'All objectives completed'**
  String get allObjectivesCompleted;

  /// Subtitle when mission failed
  ///
  /// In en, this message translates to:
  /// **'Mission objectives not met'**
  String get objectivesNotMet;

  /// Label for the rocket stat card
  ///
  /// In en, this message translates to:
  /// **'Rocket'**
  String get rocketTitle;

  /// Label for the payload stat card
  ///
  /// In en, this message translates to:
  /// **'Payload'**
  String get payload;

  /// Label for the orbit stat card
  ///
  /// In en, this message translates to:
  /// **'Orbit'**
  String get orbit;

  /// Title for the rocket card section
  ///
  /// In en, this message translates to:
  /// **'Rocket Details'**
  String get rocketDetails;

  /// Label for rocket name in rocket details
  ///
  /// In en, this message translates to:
  /// **'Rocket Name'**
  String get rocketName;

  /// Label for rocket type in rocket details
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get rocketType;

  /// Label for rocket block number
  ///
  /// In en, this message translates to:
  /// **'Block'**
  String get rocketBlock;

  /// Title for the first stage details
  ///
  /// In en, this message translates to:
  /// **'🚀 First Stage'**
  String get firstStage;

  /// Label for the core serial number
  ///
  /// In en, this message translates to:
  /// **'Core Serial'**
  String get coreSerial;

  /// Label for flight number
  ///
  /// In en, this message translates to:
  /// **'Flight'**
  String get flight;

  /// Label for landing type
  ///
  /// In en, this message translates to:
  /// **'Landing'**
  String get landing;

  /// Label for landing success indicator
  ///
  /// In en, this message translates to:
  /// **'Landing Success'**
  String get landingSuccess;

  /// Label for grid fins feature
  ///
  /// In en, this message translates to:
  /// **'Grid Fins'**
  String get gridFins;

  /// Label for landing legs feature
  ///
  /// In en, this message translates to:
  /// **'Landing Legs'**
  String get landingLegs;

  /// Label for reused feature
  ///
  /// In en, this message translates to:
  /// **'Reused'**
  String get reused;

  /// Displayed when data is not available
  ///
  /// In en, this message translates to:
  /// **'N/A'**
  String get notAvailable;

  /// Title for the recovery ships section
  ///
  /// In en, this message translates to:
  /// **'Recovery Ships'**
  String get recoveryShips;

  /// Title of the payload section
  ///
  /// In en, this message translates to:
  /// **'Payload'**
  String get payloadTitle;

  /// Label for payload ID
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get id;

  /// Label for payload type
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// Label for payload mass
  ///
  /// In en, this message translates to:
  /// **'Mass'**
  String get mass;

  /// Label for payload manufacturer
  ///
  /// In en, this message translates to:
  /// **'Manufacturer'**
  String get manufacturer;

  /// Label for payload nationality
  ///
  /// In en, this message translates to:
  /// **'Nationality'**
  String get nationality;

  /// Label for payload customers
  ///
  /// In en, this message translates to:
  /// **'Customers'**
  String get customers;

  /// Title for the mission overview section
  ///
  /// In en, this message translates to:
  /// **'Mission Overview'**
  String get missionOverview;

  /// Displayed when no mission details are provided
  ///
  /// In en, this message translates to:
  /// **'No details available'**
  String get noDetails;

  /// Title for links and resources section
  ///
  /// In en, this message translates to:
  /// **'Links & Resources'**
  String get linksResources;

  /// Button label to watch video
  ///
  /// In en, this message translates to:
  /// **'Watch Video'**
  String get watchVideo;

  /// Button label for Wikipedia link
  ///
  /// In en, this message translates to:
  /// **'Wikipedia'**
  String get wikipedia;

  /// Button label for article link
  ///
  /// In en, this message translates to:
  /// **'Article'**
  String get article;

  /// Button label for Reddit discussion
  ///
  /// In en, this message translates to:
  /// **'Reddit'**
  String get reddit;

  /// Button label for press kit link
  ///
  /// In en, this message translates to:
  /// **'Press Kit'**
  String get pressKit;

  /// Title for the launch site section
  ///
  /// In en, this message translates to:
  /// **'Launch Site'**
  String get launchSite;

  /// Label for site ID
  ///
  /// In en, this message translates to:
  /// **'Site ID:'**
  String get siteIdLabel;

  /// Label for the flight number
  ///
  /// In en, this message translates to:
  /// **'Flight #{number}'**
  String flightNumber(Object number);

  /// The title of the Rockets tab
  ///
  /// In en, this message translates to:
  /// **'Rockets'**
  String get rocketsTab;

  /// Label for active rocket
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get activeStatus;

  /// Label for retired rocket
  ///
  /// In en, this message translates to:
  /// **'Retired'**
  String get retiredStatus;

  /// Label for rocket success rate with percentage
  ///
  /// In en, this message translates to:
  /// **'{percentage}% success'**
  String successRate(Object percentage);

  /// The title of the Rockets screen
  ///
  /// In en, this message translates to:
  /// **'Rockets'**
  String get rocketsTitle;

  /// No description provided for @overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// No description provided for @specifications.
  ///
  /// In en, this message translates to:
  /// **'Specifications'**
  String get specifications;

  /// No description provided for @payloadCapacity.
  ///
  /// In en, this message translates to:
  /// **'Payload Capacity'**
  String get payloadCapacity;

  /// No description provided for @engineDetails.
  ///
  /// In en, this message translates to:
  /// **'Engine Details'**
  String get engineDetails;

  /// No description provided for @heightLabel.
  ///
  /// In en, this message translates to:
  /// **'Height'**
  String get heightLabel;

  /// No description provided for @diameterLabel.
  ///
  /// In en, this message translates to:
  /// **'Diameter'**
  String get diameterLabel;

  /// No description provided for @massLabel.
  ///
  /// In en, this message translates to:
  /// **'Mass'**
  String get massLabel;

  /// No description provided for @stagesLabel.
  ///
  /// In en, this message translates to:
  /// **'Stages'**
  String get stagesLabel;

  /// No description provided for @typeLabel.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get typeLabel;

  /// No description provided for @versionLabel.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get versionLabel;

  /// No description provided for @numberLabel.
  ///
  /// In en, this message translates to:
  /// **'Number'**
  String get numberLabel;

  /// No description provided for @propellant1Label.
  ///
  /// In en, this message translates to:
  /// **'Propellant 1'**
  String get propellant1Label;

  /// No description provided for @propellant2Label.
  ///
  /// In en, this message translates to:
  /// **'Propellant 2'**
  String get propellant2Label;

  /// No description provided for @thrustSeaLevelLabel.
  ///
  /// In en, this message translates to:
  /// **'Thrust (Sea Level)'**
  String get thrustSeaLevelLabel;

  /// No description provided for @tons.
  ///
  /// In en, this message translates to:
  /// **'tons'**
  String get tons;

  /// No description provided for @learnMore.
  ///
  /// In en, this message translates to:
  /// **'Learn More'**
  String get learnMore;

  /// No description provided for @launchInformation.
  ///
  /// In en, this message translates to:
  /// **'Launch Information'**
  String get launchInformation;

  /// No description provided for @launchMass.
  ///
  /// In en, this message translates to:
  /// **'Launch Mass'**
  String get launchMass;

  /// No description provided for @launchVehicle.
  ///
  /// In en, this message translates to:
  /// **'Launch Vehicle'**
  String get launchVehicle;

  /// No description provided for @orbitalParameters.
  ///
  /// In en, this message translates to:
  /// **'Orbital Parameters'**
  String get orbitalParameters;

  /// No description provided for @millionKm.
  ///
  /// In en, this message translates to:
  /// **'million km'**
  String get millionKm;

  /// No description provided for @missionDetails.
  ///
  /// In en, this message translates to:
  /// **'Mission Details'**
  String get missionDetails;

  /// No description provided for @trackLive.
  ///
  /// In en, this message translates to:
  /// **'Track Live'**
  String get trackLive;

  /// No description provided for @marsDistance.
  ///
  /// In en, this message translates to:
  /// **'Mars Distance'**
  String get marsDistance;

  /// No description provided for @earthDistance.
  ///
  /// In en, this message translates to:
  /// **'Earth Distance'**
  String get earthDistance;

  /// No description provided for @currentSpeed.
  ///
  /// In en, this message translates to:
  /// **'Current Speed'**
  String get currentSpeed;

  /// No description provided for @orbitalPeriod.
  ///
  /// In en, this message translates to:
  /// **'Orbital Period'**
  String get orbitalPeriod;

  /// No description provided for @unitDays.
  ///
  /// In en, this message translates to:
  /// **'days'**
  String get unitDays;

  /// No description provided for @unitKph.
  ///
  /// In en, this message translates to:
  /// **'km/h'**
  String get unitKph;

  /// No description provided for @launched.
  ///
  /// In en, this message translates to:
  /// **'Launched: {date}'**
  String launched(Object date);

  /// No description provided for @roadsterTitle.
  ///
  /// In en, this message translates to:
  /// **'Roadster'**
  String get roadsterTitle;

  /// No description provided for @roadsterDescription.
  ///
  /// In en, this message translates to:
  /// **'Elon Musk\'s Tesla Roadster'**
  String get roadsterDescription;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['de', 'en', 'pt', 'uk'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'pt':
      return AppLocalizationsPt();
    case 'uk':
      return AppLocalizationsUk();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
