import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/roadster_network_data_source.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_ext.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';

abstract class RoadsterRepository {
  Future<RoadsterResource> getRoadster();
}

class RoadsterRepositoryImpl implements RoadsterRepository {
  RoadsterRepositoryImpl(this._roadsterDataSource);

  final RoadsterDataSource _roadsterDataSource;

  @override
  Future<RoadsterResource> getRoadster() async {
    final result = await _roadsterDataSource.getRoadster();

    return ApiResultWhen(result).when(
      success: (data) => data.toResource(),
      error: (message) => throw Exception(message),
      loading: () {
        throw Exception('Loading');
      },
    );
  }
}
