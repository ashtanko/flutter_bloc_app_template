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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
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

  /// `Messages`
  String get messagesTitle {
    return Intl.message(
      'Messages',
      name: 'messagesTitle',
      desc: 'The title of the messages screen',
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

  /// `Theme`
  String get themeTitle {
    return Intl.message(
      'Theme',
      name: 'themeTitle',
      desc: '',
      args: [],
    );
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
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Empty list`
  String get emptyList {
    return Intl.message(
      'Empty list',
      name: 'emptyList',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get tabHome {
    return Intl.message(
      'Home',
      name: 'tabHome',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get tabSettings {
    return Intl.message(
      'Settings',
      name: 'tabSettings',
      desc: '',
      args: [],
    );
  }

  /// `News`
  String get newsScreen {
    return Intl.message(
      'News',
      name: 'newsScreen',
      desc: '',
      args: [],
    );
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
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
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
