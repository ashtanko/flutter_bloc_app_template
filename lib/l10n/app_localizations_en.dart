// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'flutter_bloc_app_template';

  @override
  String get itemsTitle => 'Sample Items';

  @override
  String get emailsTitle => 'Emails';

  @override
  String get launchesTitle => 'Launches';

  @override
  String itemTitle(Object id) {
    return 'Sample Item $id';
  }

  @override
  String get settingsTitle => 'Settings';

  @override
  String get appearanceTitle => 'Appearance';

  @override
  String get dynamicColorSettingsItemTitle => 'Use dynamic colors';

  @override
  String get dynamicColorSettingsItemDescription =>
      'Adapt app colors to your wallpaper';

  @override
  String get darkThemeSettingsItemTitle => 'Theme mode';

  @override
  String get darkThemeOnSettingsItemTitle => 'Dark';

  @override
  String get darkThemeOffSettingsItemTitle => 'Light';

  @override
  String get darkThemeFollowSystemSettingsItemTitle => 'System default';

  @override
  String get tryAgainButton => 'Try Again';

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
    return 'Launched at: $launchedAt';
  }

  @override
  String rocket(Object rocketName, Object rocketType) {
    return 'Rocket: $rocketName ($rocketType)';
  }

  @override
  String daysSinceTodayTitle(Object days) {
    return '$days days ago';
  }

  @override
  String daysFromTodayTitle(Object days) {
    return 'In $days days';
  }

  @override
  String get themeTitle => 'Theme';

  @override
  String get systemThemeTitle => 'System Theme';

  @override
  String get lightThemeTitle => 'Light Theme';

  @override
  String get darkThemeTitle => 'Dark Theme';

  @override
  String get lightGoldThemeTitle => 'Light Gold';

  @override
  String get darkGoldThemeTitle => 'Dark Gold';

  @override
  String get lightMintThemeTitle => 'Light Mint';

  @override
  String get darkMintThemeTitle => 'Dark Mint';

  @override
  String get experimentalThemeTitle => 'Experimental Theme';

  @override
  String get itemDetailsTitle => 'Item Details';

  @override
  String get error => 'Error';

  @override
  String get emptyList => 'Empty list';

  @override
  String get tabHome => 'Home';

  @override
  String get tabSettings => 'Settings';

  @override
  String get newsScreen => 'News';

  @override
  String get disabledButtonTitle => 'Disabled';

  @override
  String get disabledRoundedButtonTitle => 'Disabled Rounded';

  @override
  String get disabledWithIconButtonTitle => 'Disabled With Icon';

  @override
  String get enabledButtonTitle => 'Enabled';

  @override
  String get borderRadiusButtonTitle => 'BorderRadius';

  @override
  String get borderSideButtonTitle => 'BorderSide';

  @override
  String get iconButtonTitle => 'With Icon';

  @override
  String get iconAndPaddingButtonTitle => 'With Icon Padding';

  @override
  String get transparentButtonTitle => 'Transparent';

  @override
  String get missionTimeline => 'Mission Timeline';

  @override
  String get staticFireTest => 'Static Fire Test';

  @override
  String get launch => 'Launch';

  @override
  String get missionSuccess => 'Mission Success';

  @override
  String get objectivesCompleted => 'Objectives Completed';

  @override
  String get missionSuccessful => 'Mission Successful';

  @override
  String get missionFailed => 'Mission Failed';

  @override
  String get allObjectivesCompleted => 'All objectives completed';

  @override
  String get objectivesNotMet => 'Mission objectives not met';

  @override
  String get rocketTitle => 'Rocket';

  @override
  String get payload => 'Payload';

  @override
  String get orbit => 'Orbit';

  @override
  String get rocketDetails => 'Rocket Details';

  @override
  String get rocketName => 'Rocket Name';

  @override
  String get rocketType => 'Type';

  @override
  String get rocketBlock => 'Block';

  @override
  String get firstStage => '🚀 First Stage';

  @override
  String get coreSerial => 'Core Serial';

  @override
  String get flight => 'Flight';

  @override
  String get landing => 'Landing';

  @override
  String get landingSuccess => 'Landing Success';

  @override
  String get gridFins => 'Grid Fins';

  @override
  String get landingLegs => 'Landing Legs';

  @override
  String get reused => 'Reused';

  @override
  String get notAvailable => 'N/A';

  @override
  String get recoveryShips => 'Recovery Ships';

  @override
  String get payloadTitle => 'Payload';

  @override
  String get id => 'ID';

  @override
  String get type => 'Type';

  @override
  String get mass => 'Mass';

  @override
  String get manufacturer => 'Manufacturer';

  @override
  String get nationality => 'Nationality';

  @override
  String get customers => 'Customers';

  @override
  String get missionOverview => 'Mission Overview';

  @override
  String get noDetails => 'No details available';

  @override
  String get linksResources => 'Links & Resources';

  @override
  String get watchVideo => 'Watch Video';

  @override
  String get wikipedia => 'Wikipedia';

  @override
  String get article => 'Article';

  @override
  String get reddit => 'Reddit';

  @override
  String get pressKit => 'Press Kit';

  @override
  String get launchSite => 'Launch Site';

  @override
  String get siteIdLabel => 'Site ID:';

  @override
  String flightNumber(Object number) {
    return 'Flight #$number';
  }

  @override
  String get rocketsTab => 'Rockets';

  @override
  String get activeStatus => 'Active';

  @override
  String get retiredStatus => 'Retired';

  @override
  String successRate(Object percentage) {
    return '$percentage% success';
  }

  @override
  String get rocketsTitle => 'Rockets';

  @override
  String get overview => 'Overview';

  @override
  String get specifications => 'Specifications';

  @override
  String get payloadCapacity => 'Payload Capacity';

  @override
  String get engineDetails => 'Engine Details';

  @override
  String get heightLabel => 'Height';

  @override
  String get diameterLabel => 'Diameter';

  @override
  String get massLabel => 'Mass';

  @override
  String get stagesLabel => 'Stages';

  @override
  String get typeLabel => 'Type';

  @override
  String get versionLabel => 'Version';

  @override
  String get numberLabel => 'Number';

  @override
  String get propellant1Label => 'Propellant 1';

  @override
  String get propellant2Label => 'Propellant 2';

  @override
  String get thrustSeaLevelLabel => 'Thrust (Sea Level)';

  @override
  String get tons => 'tons';

  @override
  String get learnMore => 'Learn More';

  @override
  String get launchInformation => 'Launch Information';

  @override
  String get launchMass => 'Launch Mass';

  @override
  String get launchVehicle => 'Launch Vehicle';

  @override
  String get orbitalParameters => 'Orbital Parameters';

  @override
  String get millionKm => 'million km';

  @override
  String get missionDetails => 'Mission Details';

  @override
  String get trackLive => 'Track Live';

  @override
  String get marsDistance => 'Mars Distance';

  @override
  String get earthDistance => 'Earth Distance';

  @override
  String get currentSpeed => 'Current Speed';

  @override
  String get orbitalPeriod => 'Orbital Period';

  @override
  String get unitDays => 'days';

  @override
  String get unitKph => 'km/h';

  @override
  String launched(Object date) {
    return 'Launched: $date';
  }

  @override
  String get roadsterTitle => 'Roadster';

  @override
  String get roadsterDescription => 'Elon Musk\'s Tesla Roadster';
}
