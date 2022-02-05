import 'dart:convert';

class City {
  // final String countryName;
  final String cityName;
  City({
    required this.cityName,
  });

  City copyWith({
    String? cityName,
  }) {
    return City(
      cityName: cityName ?? this.cityName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cityName': cityName,
    };
  }

  factory City.fromMap(Map<String, dynamic> map) {
    return City(
      cityName: map['cityName'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory City.fromJson(String source) => City.fromMap(json.decode(source));

  @override
  String toString() => 'City(cityName: $cityName)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is City && other.cityName == cityName;
  }

  @override
  int get hashCode => cityName.hashCode;
}
