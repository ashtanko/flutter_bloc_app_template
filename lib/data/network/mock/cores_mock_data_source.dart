import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/cores_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/mock/mock_data.dart';
import 'package:flutter_bloc_app_template/data/network/model/core/network_core_model.dart';

/// Offline [CoresDataSource] backed by [MockData.cores].
class CoresMockDataSource implements CoresDataSource {
  @override
  Future<ApiResult<List<NetworkCoreModel>>> getCores({
    bool? hasId = true,
    int? limit,
    int? offset,
  }) async =>
      const ApiResult.success(MockData.cores);

  @override
  Future<ApiResult<NetworkCoreModel>> getCore(String coreSerial) async =>
      ApiResult.success(
        MockData.cores.firstWhere(
          (core) => core.coreSerial == coreSerial,
          orElse: () => MockData.cores.first,
        ),
      );
}
