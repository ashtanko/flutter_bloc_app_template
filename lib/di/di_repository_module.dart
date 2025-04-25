import 'package:flutter_bloc_app_template/data/network/data_source/launches_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/theme_storage.dart';
import 'package:flutter_bloc_app_template/repository/email_list_repository.dart';
import 'package:flutter_bloc_app_template/repository/launches_repository.dart';
import 'package:flutter_bloc_app_template/repository/theme_repository.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RepositoryModule {
  @factoryMethod
  ThemeRepository provideAccidentsRepository(ThemeStorage themeStorage) =>
      ThemeRepositoryImpl(themeStorage);

  @factoryMethod
  EmailListRepository provideEmailListRepository() => EmailListRepositoryImpl();

  @factoryMethod
  LaunchesRepository provideLaunchesRepository(LaunchesDataSource dataSource) =>
      LaunchesRepositoryImpl(dataSource);
}
