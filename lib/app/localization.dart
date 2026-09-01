import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart'
    show
        GlobalCupertinoLocalizations,
        GlobalMaterialLocalizations,
        GlobalWidgetsLocalizations;

const appSupportedLocales = <Locale>[
  Locale('en', ''),
  Locale('de', ''),
  Locale('pt', ''),
  Locale('uk', ''),
];

const appLocalizationsDelegates = <LocalizationsDelegate<dynamic>>[
  AppLocalizations.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];
