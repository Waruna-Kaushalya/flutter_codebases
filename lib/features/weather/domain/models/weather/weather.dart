import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

enum TemperatureUnits { kelvin, celsius }

extension TemperatureUnitsX on TemperatureUnits {
  bool get isKelvin => this == TemperatureUnits.kelvin;
  bool get isCelsius => this == TemperatureUnits.celsius;
}

@freezed
class WeatherEntity with _$WeatherEntity {
  @JsonSerializable(explicitToJson: true)
  factory WeatherEntity({
    required String cityname,
    required double temperature,
  }) = _WeatherEntity;

  factory WeatherEntity.fromJson(Map<String, dynamic> json) =>
      _$WeatherEntityFromJson(json);

  // factory WeatherData.fromData() {}
}
