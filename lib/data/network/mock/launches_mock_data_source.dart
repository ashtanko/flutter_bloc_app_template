import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/launches_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/mock/mock_data.dart';
import 'package:flutter_bloc_app_template/data/network/model/launch/full/network_launch_full_model.dart';
import 'package:flutter_bloc_app_template/data/network/model/launch/network_launch_model.dart';

/// Offline [LaunchesDataSource] backed by [MockData.launches].
class LaunchesMockDataSource implements LaunchesDataSource {
  @override
  Future<ApiResult<List<NetworkLaunchModel>>> getLaunches({
    bool? hasId = true,
    int? limit,
    int? offset,
    int? launchYear,
    int? launchSuccess,
    String? order,
  }) async =>
      ApiResult.success(MockData.launches);

  @override
  Future<ApiResult<NetworkLaunchFullModel>> getLaunch(int flightNumber) async =>
      ApiResult.success(
        MockData.launchesFull.firstWhere(
          (launch) => launch.flightNumber == flightNumber,
          orElse: () => MockData.launchesFull.first,
        ),
      );
}
