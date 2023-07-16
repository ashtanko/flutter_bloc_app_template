import 'package:flutter_bloc_app_template/bloc/theme/app_theme.dart';
import 'package:flutter_bloc_app_template/data/theme_storage.dart';

abstract class ThemeRepository {
  Future<void> saveTheme(AppTheme theme);

  Future<AppTheme> getTheme();
}

class ThemeRepositoryImpl implements ThemeRepository {
  ThemeRepositoryImpl(this.themeStorage);

  final ThemeStorage themeStorage;

  @override
  Future<void> saveTheme(AppTheme theme) async {
    await themeStorage.saveTheme(theme);
  }

  @override
  Future<AppTheme> getTheme() async {
    return await themeStorage.getTheme();
  }
}
