import 'package:flutter_bloc_app_template/data/theme_storage.dart';
import 'package:flutter_bloc_app_template/di/di_container.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DIDataModule {
  @lazySingleton
  ThemeStorage get themeStorage =>
      SharedPreferencesThemeStorage(diContainer.get());
}
