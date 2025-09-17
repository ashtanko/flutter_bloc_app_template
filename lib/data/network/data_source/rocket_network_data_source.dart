import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/model/rocket/network_rocket_model.dart';
import 'package:flutter_bloc_app_template/data/network/service/rocket/rocket_service.dart';

abstract class RocketDataSource {
  Future<ApiResult<List<NetworkRocketModel>>> getRockets({
    bool? hasId = true,
    int? limit,
    int? offset,
  });

  Future<ApiResult<NetworkRocketModel>> getRocket(String rocketId);
}

class RocketNetworkDataSource implements RocketDataSource {
  RocketNetworkDataSource(this._service);

  final RocketService _service;

  @override
  Future<ApiResult<List<NetworkRocketModel>>> getRockets(
      {bool? hasId = true,
      int? limit,
      int? offset,
      int? launchYear,
      int? launchSuccess,
      String? order}) async {
    try {
      final response = await _service.fetchRockets(
        hasId: hasId,
        limit: limit,
        offset: offset,
      );

      return ApiResult.success(response.toList());
    } catch (e) {
      return Future.value(ApiResult.error(e.toString()));
    }
  }

  @override
  Future<ApiResult<NetworkRocketModel>> getRocket(String rocketId) async {
    try {
      final result = await _service.fetchRocket(rocketId);
      return ApiResult.success(result);
    } catch (e) {
      return Future.value(ApiResult.error(e.toString()));
    }
  }
}
