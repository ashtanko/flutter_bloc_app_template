import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/launches_network_data_source.dart';
import 'package:flutter_bloc_app_template/models/launch.dart';

abstract class LaunchesRepository {
  Future<List<LaunchResource>> getLaunches();
}

class LaunchesRepositoryImpl implements LaunchesRepository {
  LaunchesRepositoryImpl(this._launchesDataSource);

  final LaunchesDataSource _launchesDataSource;

  @override
  Future<List<LaunchResource>> getLaunches() async {
    final list = await _launchesDataSource.getLaunches();

    return list.when(
      success: (data) => data.map((e) => e.toResource()).toList(),
      error: (message) => throw Exception(message),
      loading: () {
        throw Exception('Loading');
      },
    );
  }
}
