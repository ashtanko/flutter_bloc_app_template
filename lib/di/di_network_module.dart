import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc_app_template/config/app_config.dart';
import 'package:flutter_bloc_app_template/config/environment.dart' as env;
import 'package:flutter_bloc_app_template/data/network/data_source/cores_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/launches_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/roadster_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/rocket_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/mock/cores_mock_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/mock/launches_mock_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/mock/mock_config.dart';
import 'package:flutter_bloc_app_template/data/network/mock/roadster_mock_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/mock/rocket_mock_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/service/constants.dart';
import 'package:flutter_bloc_app_template/data/network/service/cores/cores_service.dart';
import 'package:flutter_bloc_app_template/data/network/service/launch/launch_service.dart';
import 'package:flutter_bloc_app_template/data/network/service/roadster/roadster_service.dart';
import 'package:flutter_bloc_app_template/data/network/service/rocket/rocket_service.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';

/// Base urls for the current flavor, falling back to the compile-time
/// defaults when the app is booted without `Environment.init` (widget tests).
AppConfig get _config => env.Environment.isInitialized
    ? env.Environment<AppConfig>.instance().config
    : const AppConfig(url: baseUrl, urlVersion4: baseUrlVersion4);

@module
abstract class NetworkModule {
  @factoryMethod
  Dio provideDio() {
    final dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
      ),
    );
    // Request/response headers routinely carry credentials, so they are only
    // logged off release builds.
    if (!kReleaseMode) {
      dio.interceptors.add(
        TalkerDioLogger(
          settings: const TalkerDioLoggerSettings(
            printRequestHeaders: true,
            printResponseHeaders: true,
            printResponseMessage: true,
          ),
        ),
      );
    }

    return dio;
  }

  @factoryMethod
  LaunchService provideLaunchService(Dio dio) =>
      LaunchService(dio, baseUrl: _config.url);

  @factoryMethod
  RocketService provideRocketService(Dio dio) =>
      RocketService(dio, baseUrl: _config.url);

  @factoryMethod
  RoadsterService provideRoadsterService(Dio dio) =>
      RoadsterService(dio, baseUrl: _config.urlVersion4);

  @factoryMethod
  CoresService provideCoresService(Dio dio) =>
      CoresService(dio, baseUrl: _config.url);

  @factoryMethod
  LaunchesDataSource provideLaunchesDataSource(LaunchService service) =>
      useMockData
          ? LaunchesMockDataSource()
          : LaunchesNetworkDataSource(service);

  @factoryMethod
  RocketDataSource provideRocketDataSource(RocketService service) => useMockData
      ? RocketMockDataSource()
      : RocketNetworkDataSource(service);

  @factoryMethod
  RoadsterDataSource provideRoadsterDataSource(RoadsterService service) =>
      useMockData
          ? RoadsterMockDataSource()
          : RoadsterNetworkDataSource(service);

  @factoryMethod
  CoresDataSource provideCoresDataSource(CoresService service) => useMockData
      ? CoresMockDataSource()
      : CoresNetworkDataSource(service);
}
