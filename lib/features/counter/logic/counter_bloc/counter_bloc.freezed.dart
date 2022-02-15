// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'counter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CounterState _$CounterStateFromJson(Map<String, dynamic> json) {
  return _CounterState.fromJson(json);
}

/// @nodoc
class _$CounterStateTearOff {
  const _$CounterStateTearOff();

  _CounterState call(
      {required int counterValue, required bool wasIncremented}) {
    return _CounterState(
      counterValue: counterValue,
      wasIncremented: wasIncremented,
    );
  }

  CounterState fromJson(Map<String, Object?> json) {
    return CounterState.fromJson(json);
  }
}

/// @nodoc
const $CounterState = _$CounterStateTearOff();

/// @nodoc
mixin _$CounterState {
//? required parameters
  int get counterValue => throw _privateConstructorUsedError;
  bool get wasIncremented => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CounterStateCopyWith<CounterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
          CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res>;
  $Res call({int counterValue, bool wasIncremented});
}

/// @nodoc
class _$CounterStateCopyWithImpl<$Res> implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  final CounterState _value;
  // ignore: unused_field
  final $Res Function(CounterState) _then;

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
abstract class _$CounterStateCopyWith<$Res>
    implements $CounterStateCopyWith<$Res> {
  factory _$CounterStateCopyWith(
          _CounterState value, $Res Function(_CounterState) then) =
      __$CounterStateCopyWithImpl<$Res>;
  @override
  $Res call({int counterValue, bool wasIncremented});
}

/// @nodoc
class __$CounterStateCopyWithImpl<$Res> extends _$CounterStateCopyWithImpl<$Res>
    implements _$CounterStateCopyWith<$Res> {
  __$CounterStateCopyWithImpl(
      _CounterState _value, $Res Function(_CounterState) _then)
      : super(_value, (v) => _then(v as _CounterState));

  @override
  _CounterState get _value => super._value as _CounterState;

  @override
  $Res call({
    Object? counterValue = freezed,
    Object? wasIncremented = freezed,
  }) {
    return _then(_CounterState(
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
class _$_CounterState implements _CounterState {
  _$_CounterState({required this.counterValue, required this.wasIncremented});

  factory _$_CounterState.fromJson(Map<String, dynamic> json) =>
      _$$_CounterStateFromJson(json);

  @override //? required parameters
  final int counterValue;
  @override
  final bool wasIncremented;

  @override
  String toString() {
    return 'CounterState(counterValue: $counterValue, wasIncremented: $wasIncremented)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CounterState &&
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
  _$CounterStateCopyWith<_CounterState> get copyWith =>
      __$CounterStateCopyWithImpl<_CounterState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CounterStateToJson(this);
  }
}

abstract class _CounterState implements CounterState {
  factory _CounterState(
      {required int counterValue,
      required bool wasIncremented}) = _$_CounterState;

  factory _CounterState.fromJson(Map<String, dynamic> json) =
      _$_CounterState.fromJson;

  @override //? required parameters
  int get counterValue;
  @override
  bool get wasIncremented;
  @override
  @JsonKey(ignore: true)
  _$CounterStateCopyWith<_CounterState> get copyWith =>
      throw _privateConstructorUsedError;
}
