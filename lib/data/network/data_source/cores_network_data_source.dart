import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/model/core/network_core_model.dart';
import 'package:flutter_bloc_app_template/data/network/service/cores/cores_service.dart';

abstract class CoresDataSource {
  Future<ApiResult<List<NetworkCoreModel>>> getCores({
    bool? hasId = true,
    int? limit,
    int? offset,
  });

  Future<ApiResult<NetworkCoreModel>> getCore(String coreSerial);
}

class CoresNetworkDataSource implements CoresDataSource {
  CoresNetworkDataSource(this._service);

  final CoresService _service;

  @override
  Future<ApiResult<List<NetworkCoreModel>>> getCores({
    bool? hasId = true,
    int? limit,
    int? offset,
  }) async {
    try {
      final list = await _service.fetchCores(
        hasId: hasId,
        limit: limit,
        offset: offset,
      );

      return ApiResult.success(list);
    } catch (e) {
      return Future.value(ApiResult.error(e.toString()));
    }
  }

  @override
  Future<ApiResult<NetworkCoreModel>> getCore(String coreSerial) async {
    try {
      final result = await _service.fetchCore(coreSerial);
      return ApiResult.success(result);
    } catch (e) {
      return Future.value(ApiResult.error(e.toString()));
    }
  }
}
