import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/bloc/init/init_bloc.dart';
import 'package:flutter_bloc_app_template/di/di_container.dart';
import 'package:flutter_bloc_app_template/features/launches/bloc/launches_bloc.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_bloc_app_template/repository/launches_repository.dart';
import 'package:flutter_bloc_app_template/repository/theme_repository.dart';
import 'package:flutter_bloc_app_template/theme/util.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) => MultiRepositoryProvider(
        providers: [
          RepositoryProvider<NavigationService>(
            create: (context) => NavigationService(),
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
                messagesRepository: diContainer.get<EmailListRepository>(),
              )..add(
                  EmailListFetched(),
                ),
            ),
            BlocProvider(
              create: (context) => LaunchesBloc(
                diContainer.get<LaunchesRepository>(),
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
              // Retrieves the default theme for the platform
              //TextTheme textTheme = Theme.of(context).textTheme;

              // Use with Google Fonts package to use downloadable fonts
              var textTheme = createTextTheme(context, 'Rubik', 'Rubik');
              var theme = MaterialTheme(textTheme);

              return MaterialApp(
                debugShowCheckedModeBanner: kDebugMode,
                restorationScopeId: 'app',
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale('en', ''), // English, no country code
                  Locale('de', ''), // Ukraine, no country code
                ],
                onGenerateTitle: (BuildContext context) =>
                    S.of(context).appTitle,
                theme: context.watch<ThemeCubit>().getDefaultTheme(theme),
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
