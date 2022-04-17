import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/bloc/theme_cubit.dart';
import 'package:flutter_bloc_app_template/theme/style.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../helpers/hydrated.dart';

void main() {
  test('storage getter returns correct storage instance', () {
    final storage = MockStorage();
    HydratedBlocOverrides.runZoned(() {
      expect(HydratedBlocOverrides.current!.storage, equals(storage));
    }, storage: storage);
  });

  group('ThemeCubit', () {
    late ThemeCubit cubit;
    late Storage storage;

    setUp(() async {
      storage = MockStorage();
      await HydratedBlocOverrides.runZoned(() async {
        cubit = ThemeCubit();
      }, storage: storage);
    });

    test('has initial value', () async {
      expect(cubit.state, ThemeState.system);
      expect(cubit.theme, ThemeState.system);
    });

    group('toJson/fromJson', () {
      test('work properly', () {
        expect(
          cubit.fromJson(cubit.toJson(cubit.state)),
          cubit.state,
        );
      });
    });

    blocTest<ThemeCubit, ThemeState>(
      'can change its state',
      build: () => cubit,
      act: (cubit) => cubit.theme = ThemeState.dark,
      expect: () => [
        ThemeState.dark,
      ],
    );

    test('has default light theme', () async {
      expect(cubit.lightTheme, Style.light);
    });

    test('has default dark theme', () async {
      expect(cubit.darkTheme, Style.dark);
      cubit.theme = ThemeState.dark;
      expect(cubit.darkTheme, Style.dark);
    });

    test('returns ThemeMode correctly', () async {
      cubit.theme = ThemeState.system;
      expect(cubit.themeMode, ThemeMode.system);
      cubit.theme = ThemeState.light;
      expect(cubit.themeMode, ThemeMode.light);
      cubit.theme = ThemeState.dark;
      expect(cubit.themeMode, ThemeMode.dark);
    });
  });
}
