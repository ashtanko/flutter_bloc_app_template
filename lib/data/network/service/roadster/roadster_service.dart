import 'package:dio/dio.dart';
import 'package:flutter_bloc_app_template/data/network/model/roadster/network_roadster_model.dart';
import 'package:flutter_bloc_app_template/data/network/service/constants.dart';
import 'package:retrofit/retrofit.dart';

part 'roadster_service.g.dart';

@RestApi(baseUrl: baseUrlVersion4)
abstract class RoadsterService {
  factory RoadsterService(Dio dio) = _RoadsterService;

  @GET('roadster')
  Future<NetworkRoadsterModel> fetchRoadster();
}
