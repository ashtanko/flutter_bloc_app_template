import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/bloc/theme/app_theme.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';

class AppearanceScreen extends StatelessWidget {
  const AppearanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final onSurfaceVariant = Theme.of(context).colorScheme.onSurfaceVariant;

    return Scaffold(
      appBar: AppBar(
        title: Text(context.appearanceTitle),
      ),
      body: ListView(children: <Widget>[
        PreferenceSwitch(
          key: const Key('use_dynamic_color_preference_switch'),
          title: context.dynamicColorSettingsItemTitle,
          description: context.dynamicColorSettingsItemDescription,
          icon:
              Icon(Icons.colorize_outlined, size: 24, color: onSurfaceVariant),
          switchKey: const Key('use_dynamic_color_switch'),
        ),
        BlocConsumer<ThemeCubit, AppThemeSettings>(
          builder: (context, state) {
            return PreferenceSwitch(
              key: const Key('theme_mode_preference_switch'),
              switchKey: const Key('theme_mode_switch'),
              title: S.of(context).darkThemeSettingsItemTitle,
              description: state.darkTheme.isDarkTheme()
                  ? S.of(context).darkThemeOnSettingsItemTitle
                  : S.of(context).darkThemeOffSettingsItemTitle,
              isChecked: state.darkTheme.isDarkTheme() ? true : false,
              icon: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
                child: Icon(
                  state.darkTheme.isDarkTheme()
                      ? Icons.dark_mode_outlined
                      : Icons.light_mode_outlined,
                  key: ValueKey<bool>(state.darkTheme.isDarkTheme()),
                  size: 24,
                  color: onSurfaceVariant,
                ),
              ),
              onClick: () {
                NavigationService.of(context).navigateTo(Routes.darkTheme);
              },
              onSwitchClick: (isChecked) {
                context.read<ThemeCubit>().updateTheme(
                      state.copyWith(
                        darkTheme: state.darkTheme.copyWith(
                          darkThemeValue: state.darkTheme.isDarkTheme()
                              ? DarkThemePreference.off
                              : DarkThemePreference.on,
                        ),
                      ),
                    );
              },
            );
          },
          listener: (context, state) => {},
        ),
      ]),
    );
  }
}
