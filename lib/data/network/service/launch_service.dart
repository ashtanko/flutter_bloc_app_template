import 'package:dio/dio.dart';
import 'package:flutter_bloc_app_template/data/network/model/launch/network_launch_model.dart';
import 'package:retrofit/retrofit.dart';

part 'launch_service.g.dart';

const String baseUrl = 'https://api.spacexdata.com/v3/';

@RestApi(baseUrl: baseUrl)
abstract class LaunchService {
  factory LaunchService(Dio dio) = _LaunchService;

  @GET('launches')
  Future<List<NetworkLaunchModel>> fetchLaunches({
    @Query('id') bool? hasId = true,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
    @Query('launch_year') int? launchYear,
    @Query('launch_success') int? launchSuccess,
    @Query('order') String? order,
  });
}
