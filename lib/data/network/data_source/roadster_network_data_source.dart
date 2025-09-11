import 'package:dio/dio.dart';
import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/model/roadster/network_roadster_model.dart';
import 'package:flutter_bloc_app_template/data/network/service/roadster/roadster_service.dart';

abstract class RoadsterDataSource {
  Future<ApiResult<NetworkRoadsterModel>> getRoadster();
}

class RoadsterNetworkDataSource implements RoadsterDataSource {
  RoadsterNetworkDataSource(this._service);

  final RoadsterService _service;

  @override
  Future<ApiResult<NetworkRoadsterModel>> getRoadster() async {
    try {
      final result = await _service.fetchRoadster();
      return ApiResult.success(result);
    } on DioException catch (e) {
      return ApiResult.error(e.message ?? e.toString());
    } catch (e) {
      return Future.value(ApiResult.error(e.toString()));
    }
  }
}
