import '../../../data/data.dart';
import '../../models/models.dart';

abstract class Weatherrepository {
  Weatherrepository({required this.apiClient});

  final OpenweathermapWeatherApi apiClient;
  Future<Weather> getWeatherLocationData(String cityName);
}
