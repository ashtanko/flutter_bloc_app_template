import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/roadster_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/mock/mock_data.dart';
import 'package:flutter_bloc_app_template/data/network/model/roadster/network_roadster_model.dart';

/// Offline [RoadsterDataSource] backed by [MockData.roadster].
class RoadsterMockDataSource implements RoadsterDataSource {
  @override
  Future<ApiResult<NetworkRoadsterModel>> getRoadster() async =>
      const ApiResult.success(MockData.roadster);
}
