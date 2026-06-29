import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/rocket_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/mock/mock_data.dart';
import 'package:flutter_bloc_app_template/data/network/model/rocket/network_rocket_model.dart';

/// Offline [RocketDataSource] backed by [MockData.rockets].
class RocketMockDataSource implements RocketDataSource {
  @override
  Future<ApiResult<List<NetworkRocketModel>>> getRockets({
    bool? hasId = true,
    int? limit,
    int? offset,
  }) async =>
      const ApiResult.success(MockData.rockets);

  @override
  Future<ApiResult<NetworkRocketModel>> getRocket(String rocketId) async =>
      ApiResult.success(
        MockData.rockets.firstWhere(
          (rocket) => rocket.rocketId == rocketId,
          orElse: () => MockData.rockets.first,
        ),
      );
}
