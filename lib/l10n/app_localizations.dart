import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_pt.dart';

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
    Locale('pt')
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
      <String>['de', 'en', 'pt'].contains(locale.languageCode);

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
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
