// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../bloc/email_list/email_list_bloc.dart' as _i5;
import '../bloc/theme_cubit.dart' as _i4;
import '../repository/email_list_repository.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.EmailListRepository>(() => _i3.EmailListRepository());
  gh.factory<_i4.ThemeCubit>(() => _i4.ThemeCubit());
  gh.factory<_i5.EmailListBloc>(() =>
      _i5.EmailListBloc(messagesRepository: get<_i3.EmailListRepository>()));
  return get;
}
