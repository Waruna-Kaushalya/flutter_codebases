import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

@module
abstract class WeatherInjectableModule {
  @lazySingleton
  Client get client => Client();
}
