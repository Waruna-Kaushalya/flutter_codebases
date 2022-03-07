import '../../models/models.dart';

// abstract class Weatherrepository {
//   Weatherrepository({required this.apiClient});

//   // final OpenweathermapWeatherApi apiClient;
//   final Api apiClient;
//   Future<Weather> getWeatherLocationData(String cityName);
// }

abstract class Weatherrepository {
  const Weatherrepository();

  // final OpenweathermapWeatherApi apiClient;
  // final Api apiClient;
  Future<WeatherEntity> getWeatherLocationData(String cityName);
}
