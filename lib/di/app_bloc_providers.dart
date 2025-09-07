import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/bloc/email_list/email_list_bloc.dart';
import 'package:flutter_bloc_app_template/bloc/init/init_bloc.dart';
import 'package:flutter_bloc_app_template/bloc/theme/theme_cubit.dart';
import 'package:flutter_bloc_app_template/features/launches/bloc/launches_bloc.dart';
import 'package:flutter_bloc_app_template/features/rockets/bloc/rockets_bloc.dart';
import 'package:flutter_bloc_app_template/repository/email_list_repository.dart';
import 'package:flutter_bloc_app_template/repository/launches_repository.dart';
import 'package:flutter_bloc_app_template/repository/rocket_repository.dart';
import 'package:flutter_bloc_app_template/repository/theme_repository.dart';
import 'package:provider/single_child_widget.dart' show SingleChildWidget;

import 'di_container.dart';

abstract class AppBlocProviders {
  static List<SingleChildWidget> providers() {
    return [
      BlocProvider(
        create: (context) =>
            ThemeCubit(diContainer.get<ThemeRepository>())..loadTheme(),
      ),
      BlocProvider(
        create: (context) => EmailListBloc(
          messagesRepository:
              RepositoryProvider.of<EmailListRepository>(context),
        )..add(
            EmailListFetched(),
          ),
      ),
      BlocProvider(
        create: (context) => LaunchesBloc(
          RepositoryProvider.of<LaunchesRepository>(context),
        )..add(
            const LaunchesEvent.load(),
          ),
      ),
      BlocProvider(
        create: (context) => RocketsBloc(
          RepositoryProvider.of<RocketRepository>(context),
        )..add(
            const RocketsEvent.load(),
          ),
      ),
      BlocProvider<InitBloc>(
        create: (_) => InitBloc()
          ..add(
            StartAppEvent(),
          ),
      ),
    ];
  }
}
