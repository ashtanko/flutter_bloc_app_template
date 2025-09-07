import 'package:flutter_bloc_app_template/index.dart';

abstract class RocketRepository {
  Future<List<RocketResource>> getRockets({
    bool? hasId = true,
    int? limit,
    int? offset,
  });

  Future<RocketResource> getRocket(String rocketId);
}
