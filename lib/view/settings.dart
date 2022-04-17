import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/bloc/theme_cubit.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/widgets/separator.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).settingsTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Space.large),
        child: DropdownButton<ThemeMode>(
          value: context.watch<ThemeCubit>().themeMode,
          onChanged: (ThemeMode? newValue) {
            updateThemeMode(newValue, context);
          },
          items: [
            DropdownMenuItem(
              value: ThemeMode.system,
              child: Text(
                S.of(context).systemThemeTitle,
              ),
            ),
            DropdownMenuItem(
              value: ThemeMode.light,
              child: Text(
                S.of(context).lightThemeTitle,
              ),
            ),
            DropdownMenuItem(
              value: ThemeMode.dark,
              child: Text(
                S.of(context).darkThemeTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> updateThemeMode(
    ThemeMode? newThemeMode,
    BuildContext context,
  ) async {
    if (newThemeMode == null) return;
    ThemeState state;
    if (newThemeMode == ThemeMode.dark) {
      state = ThemeState.dark;
    } else if (newThemeMode == ThemeMode.light) {
      state = ThemeState.light;
    } else if (newThemeMode == ThemeMode.system) {
      state = ThemeState.system;
    } else {
      state = ThemeState.dark;
    }
    updateTheme(context, state);
  }

  void updateTheme(BuildContext context, ThemeState value) =>
      context.read<ThemeCubit>().theme = value;
}
