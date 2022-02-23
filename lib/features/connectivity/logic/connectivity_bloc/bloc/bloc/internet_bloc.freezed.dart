// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'internet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InternetEventTearOff {
  const _$InternetEventTearOff();

  _Started started() {
    return const _Started();
  }

  _CheckConnection checkConnection(
      {required ConnectivityResult connectivityResult}) {
    return _CheckConnection(
      connectivityResult: connectivityResult,
    );
  }
}

/// @nodoc
const $InternetEvent = _$InternetEventTearOff();

/// @nodoc
mixin _$InternetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ConnectivityResult connectivityResult)
        checkConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ConnectivityResult connectivityResult)? checkConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ConnectivityResult connectivityResult)? checkConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CheckConnection value) checkConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CheckConnection value)? checkConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CheckConnection value)? checkConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetEventCopyWith<$Res> {
  factory $InternetEventCopyWith(
          InternetEvent value, $Res Function(InternetEvent) then) =
      _$InternetEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InternetEventCopyWithImpl<$Res>
    implements $InternetEventCopyWith<$Res> {
  _$InternetEventCopyWithImpl(this._value, this._then);

  final InternetEvent _value;
  // ignore: unused_field
  final $Res Function(InternetEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$InternetEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'InternetEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ConnectivityResult connectivityResult)
        checkConnection,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ConnectivityResult connectivityResult)? checkConnection,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ConnectivityResult connectivityResult)? checkConnection,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CheckConnection value) checkConnection,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CheckConnection value)? checkConnection,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CheckConnection value)? checkConnection,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements InternetEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$CheckConnectionCopyWith<$Res> {
  factory _$CheckConnectionCopyWith(
          _CheckConnection value, $Res Function(_CheckConnection) then) =
      __$CheckConnectionCopyWithImpl<$Res>;
  $Res call({ConnectivityResult connectivityResult});
}

/// @nodoc
class __$CheckConnectionCopyWithImpl<$Res>
    extends _$InternetEventCopyWithImpl<$Res>
    implements _$CheckConnectionCopyWith<$Res> {
  __$CheckConnectionCopyWithImpl(
      _CheckConnection _value, $Res Function(_CheckConnection) _then)
      : super(_value, (v) => _then(v as _CheckConnection));

  @override
  _CheckConnection get _value => super._value as _CheckConnection;

  @override
  $Res call({
    Object? connectivityResult = freezed,
  }) {
    return _then(_CheckConnection(
      connectivityResult: connectivityResult == freezed
          ? _value.connectivityResult
          : connectivityResult // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
    ));
  }
}

/// @nodoc

class _$_CheckConnection implements _CheckConnection {
  const _$_CheckConnection({required this.connectivityResult});

  @override
  final ConnectivityResult connectivityResult;

  @override
  String toString() {
    return 'InternetEvent.checkConnection(connectivityResult: $connectivityResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckConnection &&
            const DeepCollectionEquality()
                .equals(other.connectivityResult, connectivityResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(connectivityResult));

  @JsonKey(ignore: true)
  @override
  _$CheckConnectionCopyWith<_CheckConnection> get copyWith =>
      __$CheckConnectionCopyWithImpl<_CheckConnection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ConnectivityResult connectivityResult)
        checkConnection,
  }) {
    return checkConnection(connectivityResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ConnectivityResult connectivityResult)? checkConnection,
  }) {
    return checkConnection?.call(connectivityResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ConnectivityResult connectivityResult)? checkConnection,
    required TResult orElse(),
  }) {
    if (checkConnection != null) {
      return checkConnection(connectivityResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CheckConnection value) checkConnection,
  }) {
    return checkConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CheckConnection value)? checkConnection,
  }) {
    return checkConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CheckConnection value)? checkConnection,
    required TResult orElse(),
  }) {
    if (checkConnection != null) {
      return checkConnection(this);
    }
    return orElse();
  }
}

abstract class _CheckConnection implements InternetEvent {
  const factory _CheckConnection(
      {required ConnectivityResult connectivityResult}) = _$_CheckConnection;

  ConnectivityResult get connectivityResult;
  @JsonKey(ignore: true)
  _$CheckConnectionCopyWith<_CheckConnection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InternetStateTearOff {
  const _$InternetStateTearOff();

  _InternetState call(
      {ShowToastStatus showToast = ShowToastStatus.falseToast,
      required InternetStateStatus internetStateStatus}) {
    return _InternetState(
      showToast: showToast,
      internetStateStatus: internetStateStatus,
    );
  }
}

/// @nodoc
const $InternetState = _$InternetStateTearOff();

/// @nodoc
mixin _$InternetState {
  ShowToastStatus get showToast => throw _privateConstructorUsedError;
  InternetStateStatus get internetStateStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InternetStateCopyWith<InternetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetStateCopyWith<$Res> {
  factory $InternetStateCopyWith(
          InternetState value, $Res Function(InternetState) then) =
      _$InternetStateCopyWithImpl<$Res>;
  $Res call(
      {ShowToastStatus showToast, InternetStateStatus internetStateStatus});
}

/// @nodoc
class _$InternetStateCopyWithImpl<$Res>
    implements $InternetStateCopyWith<$Res> {
  _$InternetStateCopyWithImpl(this._value, this._then);

  final InternetState _value;
  // ignore: unused_field
  final $Res Function(InternetState) _then;

  @override
  $Res call({
    Object? showToast = freezed,
    Object? internetStateStatus = freezed,
  }) {
    return _then(_value.copyWith(
      showToast: showToast == freezed
          ? _value.showToast
          : showToast // ignore: cast_nullable_to_non_nullable
              as ShowToastStatus,
      internetStateStatus: internetStateStatus == freezed
          ? _value.internetStateStatus
          : internetStateStatus // ignore: cast_nullable_to_non_nullable
              as InternetStateStatus,
    ));
  }
}

/// @nodoc
abstract class _$InternetStateCopyWith<$Res>
    implements $InternetStateCopyWith<$Res> {
  factory _$InternetStateCopyWith(
          _InternetState value, $Res Function(_InternetState) then) =
      __$InternetStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ShowToastStatus showToast, InternetStateStatus internetStateStatus});
}

/// @nodoc
class __$InternetStateCopyWithImpl<$Res>
    extends _$InternetStateCopyWithImpl<$Res>
    implements _$InternetStateCopyWith<$Res> {
  __$InternetStateCopyWithImpl(
      _InternetState _value, $Res Function(_InternetState) _then)
      : super(_value, (v) => _then(v as _InternetState));

  @override
  _InternetState get _value => super._value as _InternetState;

  @override
  $Res call({
    Object? showToast = freezed,
    Object? internetStateStatus = freezed,
  }) {
    return _then(_InternetState(
      showToast: showToast == freezed
          ? _value.showToast
          : showToast // ignore: cast_nullable_to_non_nullable
              as ShowToastStatus,
      internetStateStatus: internetStateStatus == freezed
          ? _value.internetStateStatus
          : internetStateStatus // ignore: cast_nullable_to_non_nullable
              as InternetStateStatus,
    ));
  }
}

/// @nodoc

class _$_InternetState implements _InternetState {
  _$_InternetState(
      {this.showToast = ShowToastStatus.falseToast,
      required this.internetStateStatus});

  @JsonKey()
  @override
  final ShowToastStatus showToast;
  @override
  final InternetStateStatus internetStateStatus;

  @override
  String toString() {
    return 'InternetState(showToast: $showToast, internetStateStatus: $internetStateStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InternetState &&
            const DeepCollectionEquality().equals(other.showToast, showToast) &&
            const DeepCollectionEquality()
                .equals(other.internetStateStatus, internetStateStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(showToast),
      const DeepCollectionEquality().hash(internetStateStatus));

  @JsonKey(ignore: true)
  @override
  _$InternetStateCopyWith<_InternetState> get copyWith =>
      __$InternetStateCopyWithImpl<_InternetState>(this, _$identity);
}

abstract class _InternetState implements InternetState {
  factory _InternetState(
      {ShowToastStatus showToast,
      required InternetStateStatus internetStateStatus}) = _$_InternetState;

  @override
  ShowToastStatus get showToast;
  @override
  InternetStateStatus get internetStateStatus;
  @override
  @JsonKey(ignore: true)
  _$InternetStateCopyWith<_InternetState> get copyWith =>
      throw _privateConstructorUsedError;
}
