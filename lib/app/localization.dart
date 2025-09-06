import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
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
  S.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];
