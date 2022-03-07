// import '../../../data/data.dart' hide Weather;
import 'package:flutter_codebase/features/weather/data/models/weather/weather.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models/weather/weather.dart';
import '../../domain/repositories/abstract_weather_repository/weather_repository.dart';
import '../data_providers/api/openweathermap_api/openweathermap_api.dart';

@LazySingleton(as: Weatherrepository)
class ApiWeatherRepository implements Weatherrepository {
  //api object use for fetch data from api

  // final OpenweathermapWeatherApi apiClient;

  final OpenweathermapWeatherApi openweathermapWeatherApi;

  // ApiWeatherRepository({required this.apiClient});
  ApiWeatherRepository({required this.openweathermapWeatherApi});

  //getWeatherLocationData function is asyncrones method and using fetch data and return data to cubit

  @override
  Future<WeatherEntity> getWeatherLocationData(String cityName) async {
    // try {
    //rawWeather get response from api using user enter city name
    // final Response rawWeather = await api.getWeatherRawData(cityName);

    final weather = await openweathermapWeatherApi.getWeather(cityName);
    // if (rawWeather.statusCode == 200) {
    //decode jason response body and map body data
    // Map<String, dynamic> weatherMap = jsonDecode(rawWeather.body);
    // //Map cityname and temp using weather model and return weather data
    // var weather = Weather.fromJson(weatherMap);
    // return weather;

    return weather.toDomain();

    // return WeatherEntity(
    //   cityname: weather.cityname,
    //   temperature: weather.temperature.temperature,
    // );
    //     throw const Failure(message: '450');
    // }
    // } catch (e) {
    //   throw const Failure(message: '900');
    // }
  }
}
