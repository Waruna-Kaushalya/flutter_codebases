// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'toggle_switch_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ToggleswitchState _$ToggleswitchStateFromJson(Map<String, dynamic> json) {
  return _ToggleswitchState.fromJson(json);
}

/// @nodoc
class _$ToggleswitchStateTearOff {
  const _$ToggleswitchStateTearOff();

  _ToggleswitchState call(
      {ToggleSwitchStateStatus? stateStatus,
      required bool appNotification,
      required bool emailNotification}) {
    return _ToggleswitchState(
      stateStatus: stateStatus,
      appNotification: appNotification,
      emailNotification: emailNotification,
    );
  }

  ToggleswitchState fromJson(Map<String, Object?> json) {
    return ToggleswitchState.fromJson(json);
  }
}

/// @nodoc
const $ToggleswitchState = _$ToggleswitchStateTearOff();

/// @nodoc
mixin _$ToggleswitchState {
  ToggleSwitchStateStatus? get stateStatus =>
      throw _privateConstructorUsedError; //? required parameters
  bool get appNotification => throw _privateConstructorUsedError;
  bool get emailNotification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToggleswitchStateCopyWith<ToggleswitchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToggleswitchStateCopyWith<$Res> {
  factory $ToggleswitchStateCopyWith(
          ToggleswitchState value, $Res Function(ToggleswitchState) then) =
      _$ToggleswitchStateCopyWithImpl<$Res>;
  $Res call(
      {ToggleSwitchStateStatus? stateStatus,
      bool appNotification,
      bool emailNotification});
}

/// @nodoc
class _$ToggleswitchStateCopyWithImpl<$Res>
    implements $ToggleswitchStateCopyWith<$Res> {
  _$ToggleswitchStateCopyWithImpl(this._value, this._then);

  final ToggleswitchState _value;
  // ignore: unused_field
  final $Res Function(ToggleswitchState) _then;

  @override
  $Res call({
    Object? stateStatus = freezed,
    Object? appNotification = freezed,
    Object? emailNotification = freezed,
  }) {
    return _then(_value.copyWith(
      stateStatus: stateStatus == freezed
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as ToggleSwitchStateStatus?,
      appNotification: appNotification == freezed
          ? _value.appNotification
          : appNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      emailNotification: emailNotification == freezed
          ? _value.emailNotification
          : emailNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ToggleswitchStateCopyWith<$Res>
    implements $ToggleswitchStateCopyWith<$Res> {
  factory _$ToggleswitchStateCopyWith(
          _ToggleswitchState value, $Res Function(_ToggleswitchState) then) =
      __$ToggleswitchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ToggleSwitchStateStatus? stateStatus,
      bool appNotification,
      bool emailNotification});
}

/// @nodoc
class __$ToggleswitchStateCopyWithImpl<$Res>
    extends _$ToggleswitchStateCopyWithImpl<$Res>
    implements _$ToggleswitchStateCopyWith<$Res> {
  __$ToggleswitchStateCopyWithImpl(
      _ToggleswitchState _value, $Res Function(_ToggleswitchState) _then)
      : super(_value, (v) => _then(v as _ToggleswitchState));

  @override
  _ToggleswitchState get _value => super._value as _ToggleswitchState;

  @override
  $Res call({
    Object? stateStatus = freezed,
    Object? appNotification = freezed,
    Object? emailNotification = freezed,
  }) {
    return _then(_ToggleswitchState(
      stateStatus: stateStatus == freezed
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as ToggleSwitchStateStatus?,
      appNotification: appNotification == freezed
          ? _value.appNotification
          : appNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      emailNotification: emailNotification == freezed
          ? _value.emailNotification
          : emailNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ToggleswitchState implements _ToggleswitchState {
  _$_ToggleswitchState(
      {this.stateStatus,
      required this.appNotification,
      required this.emailNotification});

  factory _$_ToggleswitchState.fromJson(Map<String, dynamic> json) =>
      _$$_ToggleswitchStateFromJson(json);

  @override
  final ToggleSwitchStateStatus? stateStatus;
  @override //? required parameters
  final bool appNotification;
  @override
  final bool emailNotification;

  @override
  String toString() {
    return 'ToggleswitchState(stateStatus: $stateStatus, appNotification: $appNotification, emailNotification: $emailNotification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ToggleswitchState &&
            const DeepCollectionEquality()
                .equals(other.stateStatus, stateStatus) &&
            const DeepCollectionEquality()
                .equals(other.appNotification, appNotification) &&
            const DeepCollectionEquality()
                .equals(other.emailNotification, emailNotification));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stateStatus),
      const DeepCollectionEquality().hash(appNotification),
      const DeepCollectionEquality().hash(emailNotification));

  @JsonKey(ignore: true)
  @override
  _$ToggleswitchStateCopyWith<_ToggleswitchState> get copyWith =>
      __$ToggleswitchStateCopyWithImpl<_ToggleswitchState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ToggleswitchStateToJson(this);
  }
}

abstract class _ToggleswitchState implements ToggleswitchState {
  factory _ToggleswitchState(
      {ToggleSwitchStateStatus? stateStatus,
      required bool appNotification,
      required bool emailNotification}) = _$_ToggleswitchState;

  factory _ToggleswitchState.fromJson(Map<String, dynamic> json) =
      _$_ToggleswitchState.fromJson;

  @override
  ToggleSwitchStateStatus? get stateStatus;
  @override //? required parameters
  bool get appNotification;
  @override
  bool get emailNotification;
  @override
  @JsonKey(ignore: true)
  _$ToggleswitchStateCopyWith<_ToggleswitchState> get copyWith =>
      throw _privateConstructorUsedError;
}
