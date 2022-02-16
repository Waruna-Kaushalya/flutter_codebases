import '../../../models/models.dart';

abstract class Api {
  /// Fectch [weather] data from api
  Future<Weather> getWeather(String cityName);
}
