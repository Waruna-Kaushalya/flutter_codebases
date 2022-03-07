import 'package:flutter_codebase/features/weather/domain/models/weather/weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../failure/failure.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
abstract class WeatherDTO implements _$WeatherDTO {
  const WeatherDTO._();
  @JsonSerializable(explicitToJson: true)
  factory WeatherDTO({
    @JsonKey(name: 'name') required String cityname,
    @JsonKey(name: 'main') required Main temperature,
    Failure? failure,
  }) = _WeatherDTO;

  factory WeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$WeatherDTOFromJson(json);

  WeatherEntity toDomain() {
    return WeatherEntity(
      cityname: cityname,
      temperature: temperature.temperature,
    );
  }
}

@freezed
class Main with _$Main {
  @JsonSerializable(explicitToJson: true)
  factory Main({
    @JsonKey(name: 'temp') required double temperature,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}
