import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/cores_network_data_source.dart';
import 'package:flutter_bloc_app_template/models/core/core_ext.dart';
import 'package:flutter_bloc_app_template/models/core/core_resource.dart';

abstract class CoresRepository {
  Future<List<CoreResource>> getCores({
    bool? hasId = true,
    int? limit,
    int? offset,
  });

  Future<CoreResource> getCore(String coreSerial);
}

class CoresRepositoryImpl implements CoresRepository {
  CoresRepositoryImpl(this._coresDataSource);

  final CoresDataSource _coresDataSource;

  @override
  Future<List<CoreResource>> getCores(
      {bool? hasId = true, int? limit, int? offset}) async {
    final list = await _coresDataSource.getCores(
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

  @override
  Future<CoreResource> getCore(String coreSerial) async {
    final result = await _coresDataSource.getCore(coreSerial);

    return ApiResultWhen(result).when(
      success: (data) => data.toResource(),
      error: (message) => throw Exception(message),
      loading: () {
        throw Exception('Loading');
      },
    );
  }
}
