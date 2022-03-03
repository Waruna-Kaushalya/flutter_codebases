// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'features/connectivity/application/connectivity_bloc/internet_bloc.dart'
    as _i8;
import 'features/connectivity/domain/facade/connection_facade.dart' as _i5;
import 'features/connectivity/Infrastructure/core/connectivity_injectable_module.dart'
    as _i16;
import 'features/connectivity/Infrastructure/repositories/connectivity_plus/connectivity_plus_connection.dart'
    as _i6;
import 'features/counter/logic/counter/counter.dart' as _i7;
import 'features/counter/logic/counter_bloc/counter_bloc.dart' as _i13;
import 'features/weather/core/weather_injectable_module.dart' as _i15;
import 'features/weather/data/data.dart' as _i12;
import 'features/weather/data/data_providers/api/openweathermap_api/openweathermap_api.dart'
    as _i9;
import 'features/weather/domain/repositories/abstract_weather_repository/weather_repository.dart'
    as _i10;
import 'features/weather/domain/repositories/api_weather_repository/api_weather_repository.dart'
    as _i11;
import 'features/weather/logic/weather_bloc/bloc/weather_bloc.dart' as _i14;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final weatherInjectableModule = _$WeatherInjectableModule();
  final connectivityInjectableModule = _$ConnectivityInjectableModule();
  gh.lazySingleton<_i3.Client>(() => weatherInjectableModule.client);
  gh.lazySingleton<_i4.Connectivity>(
      () => connectivityInjectableModule.connectivity);
  gh.lazySingleton<_i5.ConnectivityFacade>(
      () => _i6.CheckConnection(get<_i4.Connectivity>()));
  gh.lazySingleton<_i7.CounterChnage>(() => _i7.CounterChangeByTwo(),
      registerFor: {_dev});
  gh.lazySingleton<_i7.CounterChnage>(() => _i7.CounterChangeByOne(),
      registerFor: {_prod});
  gh.factory<_i8.InternetBloc>(() =>
      _i8.InternetBloc(get<_i4.Connectivity>(), get<_i5.ConnectivityFacade>()));
  gh.factory<_i9.OpenweathermapWeatherApi>(
      () => _i9.OpenweathermapWeatherApi(client: get<_i3.Client>()));
  gh.lazySingleton<_i10.Weatherrepository>(() => _i11.ApiWeatherRepository(
      openweathermapWeatherApi: get<_i12.OpenweathermapWeatherApi>()));
  gh.factory<_i13.CounterBloc>(
      () => _i13.CounterBloc(get<_i7.CounterChnage>()));
  gh.factory<_i14.WeatherBloc>(
      () => _i14.WeatherBloc(get<_i10.Weatherrepository>()));
  return get;
}

class _$WeatherInjectableModule extends _i15.WeatherInjectableModule {}

class _$ConnectivityInjectableModule extends _i16.ConnectivityInjectableModule {
}
