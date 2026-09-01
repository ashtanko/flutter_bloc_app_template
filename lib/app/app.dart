import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/bloc/init/init_bloc.dart';
import 'package:flutter_bloc_app_template/di/app_bloc_providers.dart';
import 'package:flutter_bloc_app_template/di/app_repository_providers.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_bloc_app_template/theme/util.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) => MultiRepositoryProvider(
        providers: [...AppRepositoryProviders.providers()],
        child: MultiBlocProvider(
          providers: [...AppBlocProviders.providers()],
          child: Builder(
            builder: (context) {
              final navigator = NavigationService.of(context);
              final textTheme = createTextTheme(context: context);
              final theme = MaterialTheme(textTheme);
              final themeCubit = context.watch<ThemeCubit>();

              return MaterialApp(
                debugShowCheckedModeBanner: kDebugMode,
                restorationScopeId: 'app',
                localizationsDelegates: appLocalizationsDelegates,
                supportedLocales: appSupportedLocales,
                onGenerateTitle: (BuildContext context) => context.appTitle,
                theme: themeCubit.getDefaultTheme(theme),
                darkTheme: themeCubit.getDefaultDarkTheme(theme),
                themeMode: themeCubit.themeMode,
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
