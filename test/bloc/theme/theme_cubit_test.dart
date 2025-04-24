import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/bloc/theme/app_theme.dart';
import 'package:flutter_bloc_app_template/bloc/theme/theme_cubit.dart';
import 'package:flutter_bloc_app_template/data/theme_storage.dart';
import 'package:flutter_bloc_app_template/repository/theme_repository.dart';
import 'package:flutter_bloc_app_template/theme/style.dart';
import 'package:flutter_bloc_app_template/theme/util.dart' show createTextTheme;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockBuildContext extends Mock implements BuildContext {}

void main() {
  group('ThemeCubit', () {
    late ThemeCubit cubit;
    late ThemeStorage themeStorage;
    late ThemeRepository themeRepository;
    late MaterialTheme theme;
    MockBuildContext mockContext;

    setUp(() async {
      WidgetsFlutterBinding.ensureInitialized();
      SharedPreferences.setMockInitialValues({});
      final sharedPreferences = await SharedPreferences.getInstance();
      themeStorage = SharedPreferencesThemeStorage(sharedPreferences);
      themeRepository = ThemeRepositoryImpl(themeStorage);
      cubit = ThemeCubit(themeRepository);
      mockContext = MockBuildContext();
      var textTheme = createTextTheme(context: mockContext);
      theme = MaterialTheme(textTheme);
    });

    tearDown(() {
      cubit.close();
    });

    test('Initial state is defaultTheme', () {
      expect(cubit.state, ThemeCubit.defaultTheme);
    });

    test('loadTheme emits saved theme', () async {
      await cubit.loadTheme();

      expect(cubit.state, AppTheme.light);
    });

    test('themeMode returns appropriate ThemeMode', () {
      cubit.updateTheme(AppTheme.light);
      expect(cubit.themeMode, ThemeMode.light);
      cubit.updateTheme(AppTheme.dark);
      expect(cubit.themeMode, ThemeMode.dark);
      cubit.updateTheme(AppTheme.system);
      expect(cubit.themeMode, ThemeMode.system);
      cubit.updateTheme(AppTheme.experimental);
      expect(cubit.themeMode, ThemeMode.light);
    });

    test('getDefaultTheme returns correct ThemeData', () {
      cubit.updateTheme(AppTheme.light);
      final themeData = getThemeData(theme);
      expect(cubit.getDefaultTheme(theme), themeData[AppTheme.light]);

      cubit.updateTheme(AppTheme.dark);
      expect(cubit.getDefaultTheme(theme), themeData[AppTheme.dark]);

      cubit.updateTheme(AppTheme.lightGold);
      expect(cubit.getDefaultTheme(theme), themeData[AppTheme.lightGold]);

      cubit.updateTheme(AppTheme.lightMint);
      expect(cubit.getDefaultTheme(theme), themeData[AppTheme.lightMint]);

      cubit.updateTheme(AppTheme.darkGold);
      expect(cubit.getDefaultTheme(theme), themeData[AppTheme.darkGold]);

      cubit.updateTheme(AppTheme.darkMint);
      expect(cubit.getDefaultTheme(theme), themeData[AppTheme.darkMint]);

      cubit.updateTheme(AppTheme.system);
      expect(cubit.getDefaultTheme(theme), themeData[AppTheme.system]);

      cubit.updateTheme(AppTheme.experimental);
      expect(cubit.getDefaultTheme(theme), themeData[AppTheme.experimental]);
    });

    test('setTheme saves the theme and emits', () {
      final newTheme = AppTheme.lightGold;

      cubit.setTheme = newTheme;
      expect(cubit.state, newTheme);
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
      expect(cubit.getDefaultTheme(theme), theme.yellowLight());
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

    test('update to lightGold theme correctly', () async {
      verifyThemeChange(
          themeState: AppTheme.lightGold,
          themeMode: ThemeMode.light,
          expectedThemeState: AppTheme.lightGold);
    });

    test('update to lightMint theme correctly', () async {
      verifyThemeChange(
          themeState: AppTheme.lightMint,
          themeMode: ThemeMode.light,
          expectedThemeState: AppTheme.lightMint);
    });

    test('update to darkGold theme correctly', () async {
      verifyThemeChange(
          themeState: AppTheme.darkGold,
          themeMode: ThemeMode.dark,
          expectedThemeState: AppTheme.darkGold);
    });

    test('update to darkMint theme correctly', () async {
      verifyThemeChange(
          themeState: AppTheme.darkMint,
          themeMode: ThemeMode.dark,
          expectedThemeState: AppTheme.darkMint);
    });
  });
}
