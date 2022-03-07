// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherEntity _$WeatherEntityFromJson(Map<String, dynamic> json) {
  return _WeatherEntity.fromJson(json);
}

/// @nodoc
class _$WeatherEntityTearOff {
  const _$WeatherEntityTearOff();

  _WeatherEntity call({required String cityname, required double temperature}) {
    return _WeatherEntity(
      cityname: cityname,
      temperature: temperature,
    );
  }

  WeatherEntity fromJson(Map<String, Object?> json) {
    return WeatherEntity.fromJson(json);
  }
}

/// @nodoc
const $WeatherEntity = _$WeatherEntityTearOff();

/// @nodoc
mixin _$WeatherEntity {
  String get cityname => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherEntityCopyWith<WeatherEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEntityCopyWith<$Res> {
  factory $WeatherEntityCopyWith(
          WeatherEntity value, $Res Function(WeatherEntity) then) =
      _$WeatherEntityCopyWithImpl<$Res>;
  $Res call({String cityname, double temperature});
}

/// @nodoc
class _$WeatherEntityCopyWithImpl<$Res>
    implements $WeatherEntityCopyWith<$Res> {
  _$WeatherEntityCopyWithImpl(this._value, this._then);

  final WeatherEntity _value;
  // ignore: unused_field
  final $Res Function(WeatherEntity) _then;

  @override
  $Res call({
    Object? cityname = freezed,
    Object? temperature = freezed,
  }) {
    return _then(_value.copyWith(
      cityname: cityname == freezed
          ? _value.cityname
          : cityname // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$WeatherEntityCopyWith<$Res>
    implements $WeatherEntityCopyWith<$Res> {
  factory _$WeatherEntityCopyWith(
          _WeatherEntity value, $Res Function(_WeatherEntity) then) =
      __$WeatherEntityCopyWithImpl<$Res>;
  @override
  $Res call({String cityname, double temperature});
}

/// @nodoc
class __$WeatherEntityCopyWithImpl<$Res>
    extends _$WeatherEntityCopyWithImpl<$Res>
    implements _$WeatherEntityCopyWith<$Res> {
  __$WeatherEntityCopyWithImpl(
      _WeatherEntity _value, $Res Function(_WeatherEntity) _then)
      : super(_value, (v) => _then(v as _WeatherEntity));

  @override
  _WeatherEntity get _value => super._value as _WeatherEntity;

  @override
  $Res call({
    Object? cityname = freezed,
    Object? temperature = freezed,
  }) {
    return _then(_WeatherEntity(
      cityname: cityname == freezed
          ? _value.cityname
          : cityname // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WeatherEntity implements _WeatherEntity {
  _$_WeatherEntity({required this.cityname, required this.temperature});

  factory _$_WeatherEntity.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherEntityFromJson(json);

  @override
  final String cityname;
  @override
  final double temperature;

  @override
  String toString() {
    return 'WeatherEntity(cityname: $cityname, temperature: $temperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherEntity &&
            const DeepCollectionEquality().equals(other.cityname, cityname) &&
            const DeepCollectionEquality()
                .equals(other.temperature, temperature));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cityname),
      const DeepCollectionEquality().hash(temperature));

  @JsonKey(ignore: true)
  @override
  _$WeatherEntityCopyWith<_WeatherEntity> get copyWith =>
      __$WeatherEntityCopyWithImpl<_WeatherEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherEntityToJson(this);
  }
}

abstract class _WeatherEntity implements WeatherEntity {
  factory _WeatherEntity(
      {required String cityname,
      required double temperature}) = _$_WeatherEntity;

  factory _WeatherEntity.fromJson(Map<String, dynamic> json) =
      _$_WeatherEntity.fromJson;

  @override
  String get cityname;
  @override
  double get temperature;
  @override
  @JsonKey(ignore: true)
  _$WeatherEntityCopyWith<_WeatherEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
