import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/model/launch/network_launch_model.dart';
import 'package:flutter_bloc_app_template/data/network/service/launch_service.dart';

abstract class LaunchesDataSource {
  Future<ApiResult<List<NetworkLaunchModel>>> getLaunches({
    bool? hasId = true,
    int? limit,
    int? offset,
    int? launchYear,
    int? launchSuccess,
    String? order,
  });
}

class LaunchesNetworkDataSource implements LaunchesDataSource {
  LaunchesNetworkDataSource(this._service);

  final LaunchService _service;

  @override
  Future<ApiResult<List<NetworkLaunchModel>>> getLaunches(
      {bool? hasId = true,
      int? limit,
      int? offset,
      int? launchYear,
      int? launchSuccess,
      String? order}) async {
    try {
      final list = await _service.fetchLaunches(
        hasId: hasId,
        limit: limit,
        offset: offset,
        launchYear: launchYear,
        launchSuccess: launchSuccess,
        order: order,
      );

      return ApiResult.success(list);
    } catch (e) {
      return Future.value(ApiResult.error(e.toString()));
    }
  }
}
