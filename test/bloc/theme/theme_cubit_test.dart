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
    late MockBuildContext mockContext;

    setUp(() async {
      WidgetsFlutterBinding.ensureInitialized();
      SharedPreferences.setMockInitialValues({});
      final prefs = await SharedPreferences.getInstance();
      themeStorage = SharedPreferencesThemeStorage(prefs);
      themeRepository = ThemeRepositoryImpl(themeStorage);
      cubit = ThemeCubit(themeRepository);
      mockContext = MockBuildContext();
      final textTheme = createTextTheme(context: mockContext);
      theme = MaterialTheme(textTheme);
    });

    tearDown(() => cubit.close());

    void verifyThemeChange({
      required AppTheme themeState,
      required ThemeMode themeMode,
      required AppTheme expectedThemeState,
    }) {
      cubit.updateTheme(
        AppThemeSettings(
          darkTheme: DarkThemePreference(),
          appTheme: themeState,
        ),
      );
      expect(cubit.state.appTheme, expectedThemeState);
    }

    test('initial state is defaultTheme', () {
      expect(cubit.state, ThemeCubit.defaultTheme);
    });

    test('loadTheme emits saved theme', () async {
      await cubit.loadTheme();
      expect(cubit.state.appTheme, AppTheme.light);
    });

    group('themeMode returns correct ThemeMode for DarkThemePreference', () {
      final defaultDark = DarkThemePreference();

      test('off', () {
        cubit.updateTheme(
          AppThemeSettings(
            darkTheme:
                defaultDark.copyWith(darkThemeValue: DarkThemePreference.off),
            appTheme: AppTheme.light,
          ),
        );
        expect(cubit.themeMode, ThemeMode.light);
      });

      test('on', () {
        cubit.updateTheme(
          AppThemeSettings(
            darkTheme:
                defaultDark.copyWith(darkThemeValue: DarkThemePreference.on),
            appTheme: AppTheme.light,
          ),
        );
        expect(cubit.themeMode, ThemeMode.dark);
      });

      test('followSystem', () {
        cubit.updateTheme(
          AppThemeSettings(
            darkTheme: defaultDark.copyWith(
                darkThemeValue: DarkThemePreference.followSystem),
            appTheme: AppTheme.light,
          ),
        );
        expect(cubit.themeMode, ThemeMode.system);
      });
    });

    group('getDefaultTheme returns correct ThemeData', () {
      final defaultDark = DarkThemePreference();

      void testTheme(AppTheme appTheme) {
        test(appTheme.name, () {
          cubit.updateTheme(
            AppThemeSettings(
              darkTheme:
                  defaultDark.copyWith(darkThemeValue: DarkThemePreference.off),
              appTheme: appTheme,
            ),
          );
          final themeData = getThemeData(theme);
          expect(cubit.getDefaultTheme(theme), themeData[appTheme]);
        });
      }

      for (final theme in AppTheme.values) {
        testTheme(theme);
      }
    });

    test('setTheme saves and emits state', () {
      final newTheme = AppTheme.lightGold;
      final settings = AppThemeSettings(
        darkTheme: DarkThemePreference(),
        appTheme: newTheme,
      );

      cubit.setTheme = settings;
      expect(cubit.state.appTheme, newTheme);
    });

    test('initial theme values are system', () {
      expect(cubit.state.appTheme, AppTheme.system);
      expect(cubit.theme.appTheme, AppTheme.system);
    });

    blocTest<ThemeCubit, AppThemeSettings>(
      'can change its state',
      build: () => cubit,
      act: (cubit) => cubit.updateTheme(
        AppThemeSettings(
          darkTheme: DarkThemePreference().copyWith(
            darkThemeValue: DarkThemePreference.off,
          ),
          appTheme: AppTheme.dark,
        ),
      ),
      expect: () => [
        AppThemeSettings(
          darkTheme: DarkThemePreference().copyWith(
            darkThemeValue: DarkThemePreference.off,
          ),
          appTheme: AppTheme.dark,
        ),
      ],
    );

    test('returns yellow light theme by default', () {
      expect(cubit.getDefaultTheme(theme), theme.yellowLight());
    });

    group('verifyThemeChange works for', () {
      final cases = <AppTheme, ThemeMode>{
        AppTheme.system: ThemeMode.system,
        AppTheme.dark: ThemeMode.dark,
        AppTheme.light: ThemeMode.light,
        AppTheme.lightGold: ThemeMode.light,
        AppTheme.lightMint: ThemeMode.light,
        AppTheme.darkGold: ThemeMode.dark,
        AppTheme.darkMint: ThemeMode.dark,
      };

      for (final entry in cases.entries) {
        test(entry.key.name, () {
          verifyThemeChange(
            themeState: entry.key,
            themeMode: entry.value,
            expectedThemeState: entry.key,
          );
        });
      }
    });
  });
}
