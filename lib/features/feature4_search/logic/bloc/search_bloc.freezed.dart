// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchState _$SearchStateFromJson(Map<String, dynamic> json) {
  return _SearchState.fromJson(json);
}

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _SearchState call(
      {required SearchStateStatus stateStatus,
      List<String>? suggestions,
      List<String>? results,
      String? queryValue,
      String? errorMsg}) {
    return _SearchState(
      stateStatus: stateStatus,
      suggestions: suggestions,
      results: results,
      queryValue: queryValue,
      errorMsg: errorMsg,
    );
  }

  SearchState fromJson(Map<String, Object?> json) {
    return SearchState.fromJson(json);
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  SearchStateStatus get stateStatus => throw _privateConstructorUsedError;
  List<String>? get suggestions => throw _privateConstructorUsedError;
  List<String>? get results => throw _privateConstructorUsedError;
  String? get queryValue => throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {SearchStateStatus stateStatus,
      List<String>? suggestions,
      List<String>? results,
      String? queryValue,
      String? errorMsg});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? stateStatus = freezed,
    Object? suggestions = freezed,
    Object? results = freezed,
    Object? queryValue = freezed,
    Object? errorMsg = freezed,
  }) {
    return _then(_value.copyWith(
      stateStatus: stateStatus == freezed
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as SearchStateStatus,
      suggestions: suggestions == freezed
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      queryValue: queryValue == freezed
          ? _value.queryValue
          : queryValue // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMsg: errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(
          _SearchState value, $Res Function(_SearchState) then) =
      __$SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SearchStateStatus stateStatus,
      List<String>? suggestions,
      List<String>? results,
      String? queryValue,
      String? errorMsg});
}

/// @nodoc
class __$SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(
      _SearchState _value, $Res Function(_SearchState) _then)
      : super(_value, (v) => _then(v as _SearchState));

  @override
  _SearchState get _value => super._value as _SearchState;

  @override
  $Res call({
    Object? stateStatus = freezed,
    Object? suggestions = freezed,
    Object? results = freezed,
    Object? queryValue = freezed,
    Object? errorMsg = freezed,
  }) {
    return _then(_SearchState(
      stateStatus: stateStatus == freezed
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as SearchStateStatus,
      suggestions: suggestions == freezed
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      queryValue: queryValue == freezed
          ? _value.queryValue
          : queryValue // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMsg: errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchState implements _SearchState {
  _$_SearchState(
      {required this.stateStatus,
      this.suggestions,
      this.results,
      this.queryValue,
      this.errorMsg});

  factory _$_SearchState.fromJson(Map<String, dynamic> json) =>
      _$$_SearchStateFromJson(json);

  @override
  final SearchStateStatus stateStatus;
  @override
  final List<String>? suggestions;
  @override
  final List<String>? results;
  @override
  final String? queryValue;
  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'SearchState(stateStatus: $stateStatus, suggestions: $suggestions, results: $results, queryValue: $queryValue, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchState &&
            const DeepCollectionEquality()
                .equals(other.stateStatus, stateStatus) &&
            const DeepCollectionEquality()
                .equals(other.suggestions, suggestions) &&
            const DeepCollectionEquality().equals(other.results, results) &&
            const DeepCollectionEquality()
                .equals(other.queryValue, queryValue) &&
            const DeepCollectionEquality().equals(other.errorMsg, errorMsg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stateStatus),
      const DeepCollectionEquality().hash(suggestions),
      const DeepCollectionEquality().hash(results),
      const DeepCollectionEquality().hash(queryValue),
      const DeepCollectionEquality().hash(errorMsg));

  @JsonKey(ignore: true)
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchStateToJson(this);
  }
}

abstract class _SearchState implements SearchState {
  factory _SearchState(
      {required SearchStateStatus stateStatus,
      List<String>? suggestions,
      List<String>? results,
      String? queryValue,
      String? errorMsg}) = _$_SearchState;

  factory _SearchState.fromJson(Map<String, dynamic> json) =
      _$_SearchState.fromJson;

  @override
  SearchStateStatus get stateStatus;
  @override
  List<String>? get suggestions;
  @override
  List<String>? get results;
  @override
  String? get queryValue;
  @override
  String? get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
