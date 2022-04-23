import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt.get<ThemeCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt.get<EmailListBloc>()
            ..add(
              EmailListFetched(),
            ),
        ),
      ],
      child: const _App(),
    );
  }
}

class _App extends StatelessWidget {
  const _App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => null,
      child: Builder(builder: (context) {
        return MaterialApp(
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
          theme: context.watch<ThemeCubit>().lightTheme,
          darkTheme: context.watch<ThemeCubit>().darkTheme,
          themeMode: context.watch<ThemeCubit>().themeMode,
          onGenerateRoute: Routes.generateRoute,
          onUnknownRoute: Routes.errorRoute,
        );
      }),
    );
  }
}
