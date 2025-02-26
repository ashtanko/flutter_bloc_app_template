import 'package:dio/dio.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/launches_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/service/launch_service.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  @factoryMethod
  LaunchService provideLaunchService(Dio dio) {
    return LaunchService(dio);
  }

  @factoryMethod
  LaunchesDataSource provideLaunchesDataSource(LaunchService service) {
    return LaunchesNetworkDataSource(service);
  }
}
