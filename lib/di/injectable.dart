import 'package:flutter_bloc_app_template/di/injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'getit.dart';

@injectableInit
GetIt configureDependencies() => $initGetIt(getIt);
