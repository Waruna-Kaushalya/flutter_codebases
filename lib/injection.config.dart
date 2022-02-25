// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/connectivity/application/connectivity_bloc/internet_bloc.dart'
    as _i7;
import 'features/connectivity/domain/facade/connection_facade.dart' as _i4;
import 'features/connectivity/Infrastructure/repositories/connectivity_plus/connectivity_plus_connection.dart'
    as _i5;
import 'features/connectivity/Infrastructure/core/connectivity_injectable_module.dart'
    as _i9;
import 'features/counter/logic/counter/counter.dart' as _i6;
import 'features/counter/logic/counter_bloc/counter_bloc.dart' as _i8;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final connectivityInjectableModule = _$ConnectivityInjectableModule();
  gh.lazySingleton<_i3.Connectivity>(
      () => connectivityInjectableModule.connectivity);
  gh.lazySingleton<_i4.ConnectivityFacade>(
      () => _i5.CheckConnection(get<_i3.Connectivity>()));
  gh.lazySingleton<_i6.CounterChnage>(() => _i6.CounterChangeByTwo(),
      registerFor: {_dev});
  gh.lazySingleton<_i6.CounterChnage>(() => _i6.CounterChangeByOne(),
      registerFor: {_prod});
  gh.factory<_i7.InternetBloc>(() =>
      _i7.InternetBloc(get<_i3.Connectivity>(), get<_i4.ConnectivityFacade>()));
  gh.factory<_i8.CounterBloc>(() => _i8.CounterBloc(get<_i6.CounterChnage>()));
  return get;
}

class _$ConnectivityInjectableModule extends _i9.ConnectivityInjectableModule {}
