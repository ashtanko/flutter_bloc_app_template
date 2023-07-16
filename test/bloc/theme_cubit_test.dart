import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/bloc/theme/app_theme.dart';
import 'package:flutter_bloc_app_template/bloc/theme/theme_cubit.dart';
import 'package:flutter_bloc_app_template/data/theme_storage.dart';
import 'package:flutter_bloc_app_template/repository/theme_repository.dart';
import 'package:flutter_bloc_app_template/theme/style.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group('ThemeCubit', () {
    late ThemeCubit cubit;
    late ThemeStorage themeStorage;
    late ThemeRepository themeRepository;

    setUp(() async {
      WidgetsFlutterBinding.ensureInitialized();
      SharedPreferences.setMockInitialValues({});
      final sharedPreferences = await SharedPreferences.getInstance();
      themeStorage = SharedPreferencesThemeStorage(sharedPreferences);
      themeRepository = ThemeRepositoryImpl(themeStorage);
      cubit = ThemeCubit(themeRepository);
    });

    test('has initial value', () async {
      expect(cubit.state, AppTheme.system);
      expect(cubit.theme, AppTheme.system);
    });

    blocTest<ThemeCubit, AppTheme>(
      'can change its state',
      build: () => cubit,
      act: (cubit) => cubit.updateTheme(AppTheme.dark),
      expect: () => [
        AppTheme.dark,
      ],
    );

    test('has default light theme', () async {
      expect(cubit.getDefaultTheme(), Style.light);
    });

    test('has default dark theme', () async {
      expect(cubit.darkTheme, Style.dark);
      cubit.updateTheme(AppTheme.dark);
      expect(cubit.darkTheme, Style.dark);
    });

    void verifyThemeChange(
        {required AppTheme themeState,
        required ThemeMode themeMode,
        required AppTheme expectedThemeState}) {
      cubit.updateTheme(themeState);
      expect(cubit.themeMode, themeMode);
      expect(cubit.state, expectedThemeState);
    }

    test('update to system theme correctly', () async {
      verifyThemeChange(
          themeState: AppTheme.system,
          themeMode: ThemeMode.system,
          expectedThemeState: AppTheme.system);
    });

    test('update to dark theme correctly', () async {
      verifyThemeChange(
          themeState: AppTheme.dark,
          themeMode: ThemeMode.dark,
          expectedThemeState: AppTheme.dark);
    });

    test('update to light theme correctly', () async {
      verifyThemeChange(
          themeState: AppTheme.light,
          themeMode: ThemeMode.light,
          expectedThemeState: AppTheme.light);
    });

    test('update to yellow theme correctly', () async {
      verifyThemeChange(
          themeState: AppTheme.yellow,
          themeMode: ThemeMode.light,
          expectedThemeState: AppTheme.yellow);
    });
  });
}
