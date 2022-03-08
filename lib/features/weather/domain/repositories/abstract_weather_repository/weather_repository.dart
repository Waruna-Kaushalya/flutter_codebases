import '../../models/models.dart';

abstract class Weatherrepository {
  const Weatherrepository();

  // final OpenweathermapWeatherApi apiClient;
  // final Api apiClient;
  Future<WeatherEntity> getWeatherLocationData(String cityName);
}
