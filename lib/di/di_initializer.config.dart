// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter/material.dart' as _i409;
import 'package:flutter_bloc_app_template/data/network/data_source/launches_network_data_source.dart'
    as _i358;
import 'package:flutter_bloc_app_template/data/network/service/launch_service.dart'
    as _i859;
import 'package:flutter_bloc_app_template/data/theme_storage.dart' as _i750;
import 'package:flutter_bloc_app_template/di/di_app_module.dart' as _i367;
import 'package:flutter_bloc_app_template/di/di_data_module.dart' as _i513;
import 'package:flutter_bloc_app_template/di/di_network_module.dart' as _i52;
import 'package:flutter_bloc_app_template/di/di_repository_module.dart'
    as _i381;
import 'package:flutter_bloc_app_template/repository/launches_repository.dart'
    as _i11;
import 'package:flutter_bloc_app_template/repository/theme_repository.dart'
    as _i626;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:talker/talker.dart' as _i993;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    final dIAppModule = _$DIAppModule();
    final dIDataModule = _$DIDataModule();
    final repositoryModule = _$RepositoryModule();
    gh.factory<_i361.Dio>(() => networkModule.provideDio());
    gh.factory<_i993.Talker>(() => dIAppModule.provideLogger());
    gh.lazySingleton<_i409.GlobalKey<_i409.NavigatorState>>(
        () => dIAppModule.key);
    gh.lazySingleton<_i750.ThemeStorage>(() => dIDataModule.themeStorage);
    gh.factory<_i859.LaunchService>(
        () => networkModule.provideLaunchService(gh<_i361.Dio>()));
    gh.factory<_i626.ThemeRepository>(() =>
        repositoryModule.provideAccidentsRepository(gh<_i750.ThemeStorage>()));
    gh.factory<_i358.LaunchesDataSource>(() =>
        networkModule.provideLaunchesDataSource(gh<_i859.LaunchService>()));
    gh.factory<_i11.LaunchesRepository>(() => repositoryModule
        .provideLaunchesRepository(gh<_i358.LaunchesDataSource>()));
    return this;
  }
}

class _$NetworkModule extends _i52.NetworkModule {}

class _$DIAppModule extends _i367.DIAppModule {}

class _$DIDataModule extends _i513.DIDataModule {}

class _$RepositoryModule extends _i381.RepositoryModule {}
