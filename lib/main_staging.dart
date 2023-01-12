import 'package:flutter_bloc_app_template/app_runner.dart';
import 'package:flutter_bloc_app_template/config/app_config.dart';
import 'package:flutter_bloc_app_template/config/build_type.dart';
import 'package:flutter_bloc_app_template/config/environment.dart';

void main(List<String> args) {
  Environment.init(
    buildType: BuildType.staging,
    config: AppConfig(
      url: '',
    ),
  );
  run();
}
