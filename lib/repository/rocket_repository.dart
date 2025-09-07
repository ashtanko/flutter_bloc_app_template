import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/rocket_network_data_source.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_bloc_app_template/models/rocket/rocket_ext.dart';

abstract class RocketRepository {
  Future<List<RocketResource>> getRockets({
    bool? hasId = true,
    int? limit,
    int? offset,
  });

  Future<RocketResource> getRocket(String rocketId);
}

class RocketRepositoryImpl implements RocketRepository {
  RocketRepositoryImpl(this._rocketDataSource);

  final RocketDataSource _rocketDataSource;

  @override
  Future<RocketResource> getRocket(String rocketId) async {
    final result = await _rocketDataSource.getRocket(rocketId);

    return ApiResultWhen(result).when(
      success: (data) => data.toResource(),
      error: (message) => throw Exception(message),
      loading: () {
        throw Exception('Loading');
      },
    );
  }

  @override
  Future<List<RocketResource>> getRockets(
      {bool? hasId = true, int? limit, int? offset}) async {
    final list = await _rocketDataSource.getRockets(
      hasId: hasId,
      limit: limit,
      offset: offset,
    );

    return ApiResultWhen(list).when(
      success: (data) => data.map((e) => e.toResource()).toList(),
      error: (message) => throw Exception(message),
      loading: () {
        throw Exception('Loading');
      },
    );
  }
}
