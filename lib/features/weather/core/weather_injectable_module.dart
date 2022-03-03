import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@module
abstract class WeatherInjectableModule {
  @lazySingleton
  Client get client => Client();
  // http.Client get client => http.Client();
}
