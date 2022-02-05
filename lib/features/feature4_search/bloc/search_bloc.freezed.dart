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

SearchEvent _$SearchEventFromJson(Map<String, dynamic> json) {
  return _SearchEvent.fromJson(json);
}

/// @nodoc
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

  _SearchEvent call(
      {required SearchEventStatus eventStatus,
      List<String>? suggestions,
      String? suggestion,
      String? queryValue}) {
    return _SearchEvent(
      eventStatus: eventStatus,
      suggestions: suggestions,
      suggestion: suggestion,
      queryValue: queryValue,
    );
  }

  SearchEvent fromJson(Map<String, Object?> json) {
    return SearchEvent.fromJson(json);
  }
}

/// @nodoc
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  SearchEventStatus get eventStatus => throw _privateConstructorUsedError;
  List<String>? get suggestions => throw _privateConstructorUsedError;
  String? get suggestion => throw _privateConstructorUsedError;
  String? get queryValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
  $Res call(
      {SearchEventStatus eventStatus,
      List<String>? suggestions,
      String? suggestion,
      String? queryValue});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;

  @override
  $Res call({
    Object? eventStatus = freezed,
    Object? suggestions = freezed,
    Object? suggestion = freezed,
    Object? queryValue = freezed,
  }) {
    return _then(_value.copyWith(
      eventStatus: eventStatus == freezed
          ? _value.eventStatus
          : eventStatus // ignore: cast_nullable_to_non_nullable
              as SearchEventStatus,
      suggestions: suggestions == freezed
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      suggestion: suggestion == freezed
          ? _value.suggestion
          : suggestion // ignore: cast_nullable_to_non_nullable
              as String?,
      queryValue: queryValue == freezed
          ? _value.queryValue
          : queryValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SearchEventCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$SearchEventCopyWith(
          _SearchEvent value, $Res Function(_SearchEvent) then) =
      __$SearchEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {SearchEventStatus eventStatus,
      List<String>? suggestions,
      String? suggestion,
      String? queryValue});
}

/// @nodoc
class __$SearchEventCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$SearchEventCopyWith<$Res> {
  __$SearchEventCopyWithImpl(
      _SearchEvent _value, $Res Function(_SearchEvent) _then)
      : super(_value, (v) => _then(v as _SearchEvent));

  @override
  _SearchEvent get _value => super._value as _SearchEvent;

  @override
  $Res call({
    Object? eventStatus = freezed,
    Object? suggestions = freezed,
    Object? suggestion = freezed,
    Object? queryValue = freezed,
  }) {
    return _then(_SearchEvent(
      eventStatus: eventStatus == freezed
          ? _value.eventStatus
          : eventStatus // ignore: cast_nullable_to_non_nullable
              as SearchEventStatus,
      suggestions: suggestions == freezed
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      suggestion: suggestion == freezed
          ? _value.suggestion
          : suggestion // ignore: cast_nullable_to_non_nullable
              as String?,
      queryValue: queryValue == freezed
          ? _value.queryValue
          : queryValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchEvent implements _SearchEvent {
  _$_SearchEvent(
      {required this.eventStatus,
      this.suggestions,
      this.suggestion,
      this.queryValue});

  factory _$_SearchEvent.fromJson(Map<String, dynamic> json) =>
      _$$_SearchEventFromJson(json);

  @override
  final SearchEventStatus eventStatus;
  @override
  final List<String>? suggestions;
  @override
  final String? suggestion;
  @override
  final String? queryValue;

  @override
  String toString() {
    return 'SearchEvent(eventStatus: $eventStatus, suggestions: $suggestions, suggestion: $suggestion, queryValue: $queryValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchEvent &&
            const DeepCollectionEquality()
                .equals(other.eventStatus, eventStatus) &&
            const DeepCollectionEquality()
                .equals(other.suggestions, suggestions) &&
            const DeepCollectionEquality()
                .equals(other.suggestion, suggestion) &&
            const DeepCollectionEquality()
                .equals(other.queryValue, queryValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(eventStatus),
      const DeepCollectionEquality().hash(suggestions),
      const DeepCollectionEquality().hash(suggestion),
      const DeepCollectionEquality().hash(queryValue));

  @JsonKey(ignore: true)
  @override
  _$SearchEventCopyWith<_SearchEvent> get copyWith =>
      __$SearchEventCopyWithImpl<_SearchEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchEventToJson(this);
  }
}

abstract class _SearchEvent implements SearchEvent {
  factory _SearchEvent(
      {required SearchEventStatus eventStatus,
      List<String>? suggestions,
      String? suggestion,
      String? queryValue}) = _$_SearchEvent;

  factory _SearchEvent.fromJson(Map<String, dynamic> json) =
      _$_SearchEvent.fromJson;

  @override
  SearchEventStatus get eventStatus;
  @override
  List<String>? get suggestions;
  @override
  String? get suggestion;
  @override
  String? get queryValue;
  @override
  @JsonKey(ignore: true)
  _$SearchEventCopyWith<_SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      String? queryValue}) {
    return _SearchState(
      stateStatus: stateStatus,
      suggestions: suggestions,
      results: results,
      queryValue: queryValue,
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
      String? queryValue});
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
      String? queryValue});
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
      this.queryValue});

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
  String toString() {
    return 'SearchState(stateStatus: $stateStatus, suggestions: $suggestions, results: $results, queryValue: $queryValue)';
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
                .equals(other.queryValue, queryValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stateStatus),
      const DeepCollectionEquality().hash(suggestions),
      const DeepCollectionEquality().hash(results),
      const DeepCollectionEquality().hash(queryValue));

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
      String? queryValue}) = _$_SearchState;

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
  @JsonKey(ignore: true)
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
