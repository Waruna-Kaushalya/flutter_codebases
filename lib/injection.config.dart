// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/counter/logic/counter/counter.dart' as _i3;
import 'features/counter/logic/counter_bloc/counter_bloc.dart' as _i4;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.CounterChnage>(() => _i3.CounterChangeByTwo(),
      registerFor: {_dev});
  gh.lazySingleton<_i3.CounterChnage>(() => _i3.CounterChangeByOne(),
      registerFor: {_prod});
  gh.factory<_i4.CounterBloc>(() => _i4.CounterBloc(get<_i3.CounterChnage>()));
  return get;
}
