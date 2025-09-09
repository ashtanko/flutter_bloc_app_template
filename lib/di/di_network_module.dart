import 'package:dio/dio.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/cores_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/launches_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/rocket_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/service/cores/cores_service.dart';
import 'package:flutter_bloc_app_template/data/network/service/launch/launch_service.dart';
import 'package:flutter_bloc_app_template/data/network/service/rocket/rocket_service.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';

@module
abstract class NetworkModule {
  @factoryMethod
  Dio provideDio() {
    final dio = Dio();
    dio.interceptors.add(
      TalkerDioLogger(
        settings: const TalkerDioLoggerSettings(
          printRequestHeaders: true,
          printResponseHeaders: true,
          printResponseMessage: true,
        ),
      ),
    );
    return dio;
  }

  @factoryMethod
  LaunchService provideLaunchService(Dio dio) {
    return LaunchService(dio);
  }

  @factoryMethod
  RocketService provideRocketService(Dio dio) {
    return RocketService(dio);
  }

  @factoryMethod
  CoresService provideCoresService(Dio dio) {
    return CoresService(dio);
  }

  @factoryMethod
  LaunchesDataSource provideLaunchesDataSource(LaunchService service) {
    return LaunchesNetworkDataSource(service);
  }

  @factoryMethod
  RocketDataSource provideRocketDataSource(RocketService service) {
    return RocketNetworkDataSource(service);
  }

  @factoryMethod
  CoresDataSource provideCoresDataSource(CoresService service) {
    return CoresNetworkDataSource(service);
  }
}
