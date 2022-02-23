import '../../../data/data_providers/api/api/api.dart';
import '../../models/models.dart';

abstract class Weatherrepository {
  Weatherrepository({required this.apiClient});

  // final OpenweathermapWeatherApi apiClient;
  final Api apiClient;
  Future<Weather> getWeatherLocationData(String cityName);
}
