import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/bloc/init/init_bloc.dart';
import 'package:flutter_bloc_app_template/di/di_container.dart';
import 'package:flutter_bloc_app_template/features/launches/bloc/launches_bloc.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_bloc_app_template/theme/util.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) => MultiRepositoryProvider(
        providers: [
          RepositoryProvider<EmailListRepository>(
            create: (context) => EmailListRepository(),
          ),
          RepositoryProvider<NavigationService>(
            create: (context) => NavigationService(),
          ),
          RepositoryProvider<LaunchesRepository>(
            create: (context) => diContainer.get<LaunchesRepository>(),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
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
            BlocProvider<InitBloc>(
              create: (_) => InitBloc()
                ..add(
                  StartAppEvent(),
                ),
            ),
          ],
          child: Builder(
            builder: (context) {
              final navigator = NavigationService.of(context);
              var textTheme = createTextTheme(context: context);
              var theme = MaterialTheme(textTheme);

              return MaterialApp(
                debugShowCheckedModeBanner: kDebugMode,
                restorationScopeId: 'app',
                key: Key('${context.watch<ThemeCubit>().themeMode}'),
                localizationsDelegates: appLocalizationsDelegates,
                supportedLocales: appSupportedLocales,
                onGenerateTitle: (BuildContext context) => context.appTitle,
                theme: theme.yellowLight(),
                darkTheme: theme.yellowDark(),
                themeMode: context.watch<ThemeCubit>().themeMode,
                navigatorKey: appNavigatorKey,
                onGenerateRoute: navigator.onGenerateRoute,
                builder: (_, child) => BlocListener<InitBloc, InitState>(
                  listener: (_, state) {
                    if (state is OpenApp) {
                      navigator.pushAndRemoveAll(Routes.app);
                    }
                  },
                  child: child,
                ),
              );
            },
          ),
        ),
      );
}
