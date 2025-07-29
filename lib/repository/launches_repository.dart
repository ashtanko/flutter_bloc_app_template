import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/launches_network_data_source.dart';
import 'package:flutter_bloc_app_template/models/launch.dart';

abstract class LaunchesRepository {
  Future<List<LaunchResource>> getLaunches({
    bool? hasId = true,
    int? limit,
    int? offset,
    int? launchYear,
    int? launchSuccess,
    String? order,
  });

  Future<LaunchFullResource> getLaunch(int flightNumber);
}

class LaunchesRepositoryImpl implements LaunchesRepository {
  LaunchesRepositoryImpl(this._launchesDataSource);

  final LaunchesDataSource _launchesDataSource;

  @override
  Future<List<LaunchResource>> getLaunches({
    bool? hasId = true,
    int? limit,
    int? offset,
    int? launchYear,
    int? launchSuccess,
    String? order,
  }) async {
    final list = await _launchesDataSource.getLaunches(
      hasId: hasId,
      limit: limit,
      offset: offset,
      launchYear: launchYear,
      launchSuccess: launchSuccess,
      order: order,
    );

    return list.when(
      success: (data) => data.map((e) => e.toResource()).toList(),
      error: (message) => throw Exception(message),
      loading: () {
        throw Exception('Loading');
      },
    );
  }

  @override
  Future<LaunchFullResource> getLaunch(int flightNumber) {
    // TODO: implement getLaunch
    throw UnimplementedError();
  }
}
