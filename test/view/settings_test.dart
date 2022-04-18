import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockThemeCubit extends MockCubit<ThemeState> implements ThemeCubit {}

extension on WidgetTester {
  Future<void> pumpSettings(ThemeCubit themeCubit) {
    return pumpWidget(
      MaterialApp(
        localizationsDelegates: [
          const AppLocalizationDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        locale: const Locale('en'),
        home: BlocProvider.value(
          value: themeCubit,
          child: const Settings(),
        ),
      ),
    );
  }
}

void main() {
  late ThemeCubit themeCubit;

  setUp(() {
    themeCubit = MockThemeCubit();
  });

  group('Settings Screen Tests', () {
    testWidgets('renders Settings title', (tester) async {
      when(() => themeCubit.state).thenReturn(ThemeState.dark);
      when(() => themeCubit.themeMode).thenReturn(ThemeMode.dark);

      await tester.pumpSettings(themeCubit);
      await tester.pump();

      expect(find.text('Settings'), findsOneWidget);
    });

    testWidgets('renders dropdown title for dark theme', (tester) async {
      when(() => themeCubit.state).thenReturn(ThemeState.dark);
      when(() => themeCubit.themeMode).thenReturn(ThemeMode.dark);

      await tester.pumpSettings(themeCubit);
      await tester.pump();

      expect(find.text('Dark Theme'), findsOneWidget);
    });

    testWidgets('renders dropdown title for light theme', (tester) async {
      when(() => themeCubit.state).thenReturn(ThemeState.light);
      when(() => themeCubit.themeMode).thenReturn(ThemeMode.light);

      await tester.pumpSettings(themeCubit);
      await tester.pump();

      expect(find.text('Light Theme'), findsOneWidget);
    });
  });
}
