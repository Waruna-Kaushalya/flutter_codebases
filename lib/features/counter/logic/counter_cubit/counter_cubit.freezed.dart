// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'counter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CounterCubitState _$CounterCubitStateFromJson(Map<String, dynamic> json) {
  return _CounterCubitState.fromJson(json);
}

/// @nodoc
class _$CounterCubitStateTearOff {
  const _$CounterCubitStateTearOff();

  _CounterCubitState call(
      {required int counterValue, required bool wasIncremented}) {
    return _CounterCubitState(
      counterValue: counterValue,
      wasIncremented: wasIncremented,
    );
  }

  CounterCubitState fromJson(Map<String, Object?> json) {
    return CounterCubitState.fromJson(json);
  }
}

/// @nodoc
const $CounterCubitState = _$CounterCubitStateTearOff();

/// @nodoc
mixin _$CounterCubitState {
//? required parameters
  int get counterValue => throw _privateConstructorUsedError;
  bool get wasIncremented => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CounterCubitStateCopyWith<CounterCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterCubitStateCopyWith<$Res> {
  factory $CounterCubitStateCopyWith(
          CounterCubitState value, $Res Function(CounterCubitState) then) =
      _$CounterCubitStateCopyWithImpl<$Res>;
  $Res call({int counterValue, bool wasIncremented});
}

/// @nodoc
class _$CounterCubitStateCopyWithImpl<$Res>
    implements $CounterCubitStateCopyWith<$Res> {
  _$CounterCubitStateCopyWithImpl(this._value, this._then);

  final CounterCubitState _value;
  // ignore: unused_field
  final $Res Function(CounterCubitState) _then;

  @override
  $Res call({
    Object? counterValue = freezed,
    Object? wasIncremented = freezed,
  }) {
    return _then(_value.copyWith(
      counterValue: counterValue == freezed
          ? _value.counterValue
          : counterValue // ignore: cast_nullable_to_non_nullable
              as int,
      wasIncremented: wasIncremented == freezed
          ? _value.wasIncremented
          : wasIncremented // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CounterCubitStateCopyWith<$Res>
    implements $CounterCubitStateCopyWith<$Res> {
  factory _$CounterCubitStateCopyWith(
          _CounterCubitState value, $Res Function(_CounterCubitState) then) =
      __$CounterCubitStateCopyWithImpl<$Res>;
  @override
  $Res call({int counterValue, bool wasIncremented});
}

/// @nodoc
class __$CounterCubitStateCopyWithImpl<$Res>
    extends _$CounterCubitStateCopyWithImpl<$Res>
    implements _$CounterCubitStateCopyWith<$Res> {
  __$CounterCubitStateCopyWithImpl(
      _CounterCubitState _value, $Res Function(_CounterCubitState) _then)
      : super(_value, (v) => _then(v as _CounterCubitState));

  @override
  _CounterCubitState get _value => super._value as _CounterCubitState;

  @override
  $Res call({
    Object? counterValue = freezed,
    Object? wasIncremented = freezed,
  }) {
    return _then(_CounterCubitState(
      counterValue: counterValue == freezed
          ? _value.counterValue
          : counterValue // ignore: cast_nullable_to_non_nullable
              as int,
      wasIncremented: wasIncremented == freezed
          ? _value.wasIncremented
          : wasIncremented // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CounterCubitState implements _CounterCubitState {
  _$_CounterCubitState(
      {required this.counterValue, required this.wasIncremented});

  factory _$_CounterCubitState.fromJson(Map<String, dynamic> json) =>
      _$$_CounterCubitStateFromJson(json);

  @override //? required parameters
  final int counterValue;
  @override
  final bool wasIncremented;

  @override
  String toString() {
    return 'CounterCubitState(counterValue: $counterValue, wasIncremented: $wasIncremented)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CounterCubitState &&
            const DeepCollectionEquality()
                .equals(other.counterValue, counterValue) &&
            const DeepCollectionEquality()
                .equals(other.wasIncremented, wasIncremented));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(counterValue),
      const DeepCollectionEquality().hash(wasIncremented));

  @JsonKey(ignore: true)
  @override
  _$CounterCubitStateCopyWith<_CounterCubitState> get copyWith =>
      __$CounterCubitStateCopyWithImpl<_CounterCubitState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CounterCubitStateToJson(this);
  }
}

abstract class _CounterCubitState implements CounterCubitState {
  factory _CounterCubitState(
      {required int counterValue,
      required bool wasIncremented}) = _$_CounterCubitState;

  factory _CounterCubitState.fromJson(Map<String, dynamic> json) =
      _$_CounterCubitState.fromJson;

  @override //? required parameters
  int get counterValue;
  @override
  bool get wasIncremented;
  @override
  @JsonKey(ignore: true)
  _$CounterCubitStateCopyWith<_CounterCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}
