import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_test/flutter_test.dart';

extension PumpLocalizedWidget on WidgetTester {
  Future<void> pumpLocalizedWidgetWithBloc<B extends BlocBase<Object>>({
    required B bloc,
    required Widget child,
    Locale locale = const Locale('en'),
    ThemeData? theme,
    void Function(BuildContext context)? contextCallback,
  }) {
    return _pumpLocalized(
      locale: locale,
      theme: theme,
      contextCallback: contextCallback,
      child: BlocProvider<B>.value(
        value: bloc,
        child: child,
      ),
    );
  }

  Future<void> pumpLocalizedWidget({
    required Widget child,
    Locale locale = const Locale('en'),
    ThemeData? theme,
    void Function(BuildContext context)? contextCallback,
  }) {
    return _pumpLocalized(
      locale: locale,
      theme: theme,
      child: child,
      contextCallback: contextCallback,
    );
  }

  Future<void> _pumpLocalized({
    required Widget child,
    required Locale locale,
    ThemeData? theme,
    void Function(BuildContext context)? contextCallback,
  }) {
    return pumpWidget(
      MaterialApp(
        locale: locale,
        theme: theme,
        localizationsDelegates: appLocalizationsDelegates,
        supportedLocales: appSupportedLocales,
        home: Builder(builder: (context) {
          contextCallback?.call(context);
          return child;
        }),
      ),
    );
  }
}
