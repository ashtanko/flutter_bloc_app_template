import 'package:flutter_bloc_app_template/models/core/core_resource.dart';

abstract class CoresRepository {
  Future<List<CoreResource>> getCores({
    bool? hasId = true,
    int? limit,
    int? offset,
  });

  Future<CoreResource> getCore(String coreSerial);
}
