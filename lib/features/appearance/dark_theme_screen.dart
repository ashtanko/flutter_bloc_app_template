import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/bloc/theme/app_theme.dart';
import 'package:flutter_bloc_app_template/index.dart';

class DarkThemeScreen extends StatelessWidget {
  const DarkThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.darkThemeTitle),
      ),
      body: ListView(children: <Widget>[
        BlocConsumer<ThemeCubit, AppThemeSettings>(
          builder: (context, state) {
            return RadioGroup<int>(
              groupValue: state.darkTheme.darkThemeValue,
              onChanged: (int? value) {
                context.read<ThemeCubit>().updateTheme(
                      state.copyWith(
                        darkTheme: state.darkTheme.copyWith(
                          darkThemeValue: value,
                        ),
                      ),
                    );
              },
              child: Column(
                children: <Widget>[
                  RadioListTile<int>(
                    title: Text(context.darkThemeOnSettingsItemTitle),
                    value: DarkThemePreference.on,
                    key: Key(context.darkThemeOnSettingsItemTitle),
                    secondary: ThemeIcon(
                      icon: themeIcon(DarkThemePreference.on),
                      isSelected: DarkThemePreference.on ==
                          state.darkTheme.darkThemeValue,
                    ),
                  ),
                  RadioListTile<int>(
                    title: Text(context.darkThemeOffSettingsItemTitle),
                    value: DarkThemePreference.off,
                    key: Key(context.darkThemeOffSettingsItemTitle),
                    secondary: ThemeIcon(
                      icon: themeIcon(DarkThemePreference.off),
                      isSelected: DarkThemePreference.off ==
                          state.darkTheme.darkThemeValue,
                    ),
                  ),
                  RadioListTile<int>(
                    title: Text(context.darkThemeFollowSystemSettingsItemTitle),
                    value: DarkThemePreference.followSystem,
                    key: Key(context.darkThemeFollowSystemSettingsItemTitle),
                    secondary: ThemeIcon(
                      icon: themeIcon(DarkThemePreference.followSystem),
                      isSelected: DarkThemePreference.followSystem ==
                          state.darkTheme.darkThemeValue,
                    ),
                  ),
                  //Radio<int>(value: DarkThemePreference.off),
                ],
              ),
            );
          },
          listener: (context, state) => {},
        ),
      ]),
    );
  }

  IconData themeIcon(int theme) {
    switch (theme) {
      case DarkThemePreference.off:
        return Icons.light_mode_outlined;
      case DarkThemePreference.on:
        return Icons.dark_mode_outlined;
      case DarkThemePreference.followSystem:
      default:
        return Icons.settings_outlined;
    }
  }
}

class ThemeIcon extends StatefulWidget {
  const ThemeIcon({super.key, required this.icon, this.isSelected = false});

  final IconData icon;
  final bool isSelected;

  @override
  State<ThemeIcon> createState() => _ThemeIconState();
}

class _ThemeIconState extends State<ThemeIcon> {
  double turns = 0;

  @override
  void didUpdateWidget(covariant ThemeIcon oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isSelected) {
      // Rotate 1 full turn on icon change
      setState(() {
        turns += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedRotation(
      turns: turns,
      duration: const Duration(milliseconds: 600),
      child: Icon(widget.icon),
    );
  }
}
