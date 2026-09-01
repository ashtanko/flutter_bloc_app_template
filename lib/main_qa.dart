import 'package:flutter_bloc_app_template/app_runner.dart';
import 'package:flutter_bloc_app_template/config/app_config.dart';
import 'package:flutter_bloc_app_template/config/build_type.dart';
import 'package:flutter_bloc_app_template/config/environment.dart';
import 'package:flutter_bloc_app_template/data/network/service/constants.dart';

void main(List<String> args) {
  Environment.init(
    buildType: BuildType.qa,
    config: const AppConfig(
      url: baseUrl,
      urlVersion4: baseUrlVersion4,
    ),
  );
  run();
}
