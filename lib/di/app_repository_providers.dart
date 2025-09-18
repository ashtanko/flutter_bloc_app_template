import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/repository/cores_repository.dart';
import 'package:flutter_bloc_app_template/repository/email_list_repository.dart';
import 'package:flutter_bloc_app_template/repository/launches_repository.dart';
import 'package:flutter_bloc_app_template/repository/roadster_repository.dart';
import 'package:flutter_bloc_app_template/repository/rocket_repository.dart';
import 'package:flutter_bloc_app_template/routes/router.dart';
import 'package:provider/single_child_widget.dart' show SingleChildWidget;

import 'di_container.dart';

abstract class AppRepositoryProviders {
  static List<SingleChildWidget> providers() {
    return [
      RepositoryProvider<EmailListRepository>(
        create: (context) => EmailListRepository(),
      ),
      RepositoryProvider<NavigationService>(
        create: (context) => NavigationService(),
      ),
      RepositoryProvider<LaunchesRepository>(
        create: (context) => diContainer.get<LaunchesRepository>(),
      ),
      RepositoryProvider<RocketRepository>(
        create: (context) => diContainer.get<RocketRepository>(),
      ),
      RepositoryProvider<RoadsterRepository>(
        create: (context) => diContainer.get<RoadsterRepository>(),
      ),
      RepositoryProvider<CoresRepository>(
        create: (context) => diContainer.get<CoresRepository>(),
      ),
    ];
  }
}
