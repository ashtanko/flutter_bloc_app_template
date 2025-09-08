import 'package:dio/dio.dart';
import 'package:flutter_bloc_app_template/data/network/model/core/network_core_model.dart';
import 'package:flutter_bloc_app_template/data/network/service/constants.dart';
import 'package:retrofit/retrofit.dart';

part 'cores_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class CoresService {
  factory CoresService(Dio dio) = _CoresService;

  @GET('cores')
  Future<List<NetworkCoreModel>> fetchCores({
    @Query('id') bool? hasId = true,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });

  @GET('cores/{coreSerial}')
  Future<NetworkCoreModel> fetchCore(
    @Path('coreSerial') String coreSerial,
  );
}
