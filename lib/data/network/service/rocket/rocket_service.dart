import 'package:dio/dio.dart';
import 'package:flutter_bloc_app_template/data/network/model/rocket/network_rocket_model.dart';
import 'package:flutter_bloc_app_template/data/network/service/constants.dart';
import 'package:retrofit/retrofit.dart';

part 'rocket_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class RocketService {
  factory RocketService(Dio dio) = _RocketService;

  @GET('rockets')
  Future<List<NetworkRocketModel>> fetchRockets({
    @Query('id') bool? hasId = true,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });

  @GET('rockets/{rocketId}')
  Future<NetworkRocketModel> fetchRocket(
    @Path('rocketId') String rocketId,
  );
}
