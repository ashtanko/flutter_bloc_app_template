import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/bloc/init/init_bloc.dart';
import 'package:flutter_bloc_app_template/di/di_container.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<EmailListRepository>(
          create: (context) => EmailListRepository(),
        ),
        RepositoryProvider<NavigationService>(
          create: (context) => NavigationService(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ThemeCubit(diContainer.get())..loadTheme(),
          ),
          BlocProvider(
            create: (context) => EmailListBloc(
              messagesRepository:
                  RepositoryProvider.of<EmailListRepository>(context),
            )..add(
                EmailListFetched(),
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
              onGenerateTitle: (BuildContext context) => S.of(context).appTitle,
              theme: context.watch<ThemeCubit>().getDefaultTheme(),
              darkTheme: context.watch<ThemeCubit>().darkTheme,
              themeMode: context.watch<ThemeCubit>().themeMode,
              navigatorKey: appNavigatorKey,
              onGenerateRoute: navigator.onGenerateRoute,
              builder: (_, child) {
                return BlocListener<InitBloc, InitState>(
                  listener: (_, state) {
                    if (state is OpenApp) {
                      navigator.pushAndRemoveAll(Routes.app);
                    }
                  },
                  child: child,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
