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

/// @nodoc
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

  SearchQueryTyped searchQueryTyped({required String queryValue}) {
    return SearchQueryTyped(
      queryValue: queryValue,
    );
  }

  SearchQuerySubmitted searchQuerySubmitted({required String queryValue}) {
    return SearchQuerySubmitted(
      queryValue: queryValue,
    );
  }

  SearchSuggetionPressed searchSuggetionPressed({required String suggestion}) {
    return SearchSuggetionPressed(
      suggestion: suggestion,
    );
  }

  SearchSuggetionRemoved searchSuggetionRemoved(
      {required String suggestion, required String queryValue}) {
    return SearchSuggetionRemoved(
      suggestion: suggestion,
      queryValue: queryValue,
    );
  }

  SearchClearBtnPressed searchClearBtnPressed() {
    return const SearchClearBtnPressed();
  }

  SearchBackArrowBtnPressed searchBackArrowBtnPressed() {
    return const SearchBackArrowBtnPressed();
  }
}

/// @nodoc
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String queryValue) searchQueryTyped,
    required TResult Function(String queryValue) searchQuerySubmitted,
    required TResult Function(String suggestion) searchSuggetionPressed,
    required TResult Function(String suggestion, String queryValue)
        searchSuggetionRemoved,
    required TResult Function() searchClearBtnPressed,
    required TResult Function() searchBackArrowBtnPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String queryValue)? searchQueryTyped,
    TResult Function(String queryValue)? searchQuerySubmitted,
    TResult Function(String suggestion)? searchSuggetionPressed,
    TResult Function(String suggestion, String queryValue)?
        searchSuggetionRemoved,
    TResult Function()? searchClearBtnPressed,
    TResult Function()? searchBackArrowBtnPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String queryValue)? searchQueryTyped,
    TResult Function(String queryValue)? searchQuerySubmitted,
    TResult Function(String suggestion)? searchSuggetionPressed,
    TResult Function(String suggestion, String queryValue)?
        searchSuggetionRemoved,
    TResult Function()? searchClearBtnPressed,
    TResult Function()? searchBackArrowBtnPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchQueryTyped value) searchQueryTyped,
    required TResult Function(SearchQuerySubmitted value) searchQuerySubmitted,
    required TResult Function(SearchSuggetionPressed value)
        searchSuggetionPressed,
    required TResult Function(SearchSuggetionRemoved value)
        searchSuggetionRemoved,
    required TResult Function(SearchClearBtnPressed value)
        searchClearBtnPressed,
    required TResult Function(SearchBackArrowBtnPressed value)
        searchBackArrowBtnPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchQueryTyped value)? searchQueryTyped,
    TResult Function(SearchQuerySubmitted value)? searchQuerySubmitted,
    TResult Function(SearchSuggetionPressed value)? searchSuggetionPressed,
    TResult Function(SearchSuggetionRemoved value)? searchSuggetionRemoved,
    TResult Function(SearchClearBtnPressed value)? searchClearBtnPressed,
    TResult Function(SearchBackArrowBtnPressed value)?
        searchBackArrowBtnPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchQueryTyped value)? searchQueryTyped,
    TResult Function(SearchQuerySubmitted value)? searchQuerySubmitted,
    TResult Function(SearchSuggetionPressed value)? searchSuggetionPressed,
    TResult Function(SearchSuggetionRemoved value)? searchSuggetionRemoved,
    TResult Function(SearchClearBtnPressed value)? searchClearBtnPressed,
    TResult Function(SearchBackArrowBtnPressed value)?
        searchBackArrowBtnPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class $SearchQueryTypedCopyWith<$Res> {
  factory $SearchQueryTypedCopyWith(
          SearchQueryTyped value, $Res Function(SearchQueryTyped) then) =
      _$SearchQueryTypedCopyWithImpl<$Res>;
  $Res call({String queryValue});
}

/// @nodoc
class _$SearchQueryTypedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $SearchQueryTypedCopyWith<$Res> {
  _$SearchQueryTypedCopyWithImpl(
      SearchQueryTyped _value, $Res Function(SearchQueryTyped) _then)
      : super(_value, (v) => _then(v as SearchQueryTyped));

  @override
  SearchQueryTyped get _value => super._value as SearchQueryTyped;

  @override
  $Res call({
    Object? queryValue = freezed,
  }) {
    return _then(SearchQueryTyped(
      queryValue: queryValue == freezed
          ? _value.queryValue
          : queryValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchQueryTyped implements SearchQueryTyped {
  const _$SearchQueryTyped({required this.queryValue});

  @override
  final String queryValue;

  @override
  String toString() {
    return 'SearchEvent.searchQueryTyped(queryValue: $queryValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchQueryTyped &&
            const DeepCollectionEquality()
                .equals(other.queryValue, queryValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(queryValue));

  @JsonKey(ignore: true)
  @override
  $SearchQueryTypedCopyWith<SearchQueryTyped> get copyWith =>
      _$SearchQueryTypedCopyWithImpl<SearchQueryTyped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String queryValue) searchQueryTyped,
    required TResult Function(String queryValue) searchQuerySubmitted,
    required TResult Function(String suggestion) searchSuggetionPressed,
    required TResult Function(String suggestion, String queryValue)
        searchSuggetionRemoved,
    required TResult Function() searchClearBtnPressed,
    required TResult Function() searchBackArrowBtnPressed,
  }) {
    return searchQueryTyped(queryValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String queryValue)? searchQueryTyped,
    TResult Function(String queryValue)? searchQuerySubmitted,
    TResult Function(String suggestion)? searchSuggetionPressed,
    TResult Function(String suggestion, String queryValue)?
        searchSuggetionRemoved,
    TResult Function()? searchClearBtnPressed,
    TResult Function()? searchBackArrowBtnPressed,
  }) {
    return searchQueryTyped?.call(queryValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String queryValue)? searchQueryTyped,
    TResult Function(String queryValue)? searchQuerySubmitted,
    TResult Function(String suggestion)? searchSuggetionPressed,
    TResult Function(String suggestion, String queryValue)?
        searchSuggetionRemoved,
    TResult Function()? searchClearBtnPressed,
    TResult Function()? searchBackArrowBtnPressed,
    required TResult orElse(),
  }) {
    if (searchQueryTyped != null) {
      return searchQueryTyped(queryValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchQueryTyped value) searchQueryTyped,
    required TResult Function(SearchQuerySubmitted value) searchQuerySubmitted,
    required TResult Function(SearchSuggetionPressed value)
        searchSuggetionPressed,
    required TResult Function(SearchSuggetionRemoved value)
        searchSuggetionRemoved,
    required TResult Function(SearchClearBtnPressed value)
        searchClearBtnPressed,
    required TResult Function(SearchBackArrowBtnPressed value)
        searchBackArrowBtnPressed,
  }) {
    return searchQueryTyped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchQueryTyped value)? searchQueryTyped,
    TResult Function(SearchQuerySubmitted value)? searchQuerySubmitted,
    TResult Function(SearchSuggetionPressed value)? searchSuggetionPressed,
    TResult Function(SearchSuggetionRemoved value)? searchSuggetionRemoved,
    TResult Function(SearchClearBtnPressed value)? searchClearBtnPressed,
    TResult Function(SearchBackArrowBtnPressed value)?
        searchBackArrowBtnPressed,
  }) {
    return searchQueryTyped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchQueryTyped value)? searchQueryTyped,
    TResult Function(SearchQuerySubmitted value)? searchQuerySubmitted,
    TResult Function(SearchSuggetionPressed value)? searchSuggetionPressed,
    TResult Function(SearchSuggetionRemoved value)? searchSuggetionRemoved,
    TResult Function(SearchClearBtnPressed value)? searchClearBtnPressed,
    TResult Function(SearchBackArrowBtnPressed value)?
        searchBackArrowBtnPressed,
    required TResult orElse(),
  }) {
    if (searchQueryTyped != null) {
      return searchQueryTyped(this);
    }
    return orElse();
  }
}

abstract class SearchQueryTyped implements SearchEvent {
  const factory SearchQueryTyped({required String queryValue}) =
      _$SearchQueryTyped;

  String get queryValue;
  @JsonKey(ignore: true)
  $SearchQueryTypedCopyWith<SearchQueryTyped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchQuerySubmittedCopyWith<$Res> {
  factory $SearchQuerySubmittedCopyWith(SearchQuerySubmitted value,
          $Res Function(SearchQuerySubmitted) then) =
      _$SearchQuerySubmittedCopyWithImpl<$Res>;
  $Res call({String queryValue});
}

/// @nodoc
class _$SearchQuerySubmittedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $SearchQuerySubmittedCopyWith<$Res> {
  _$SearchQuerySubmittedCopyWithImpl(
      SearchQuerySubmitted _value, $Res Function(SearchQuerySubmitted) _then)
      : super(_value, (v) => _then(v as SearchQuerySubmitted));

  @override
  SearchQuerySubmitted get _value => super._value as SearchQuerySubmitted;

  @override
  $Res call({
    Object? queryValue = freezed,
  }) {
    return _then(SearchQuerySubmitted(
      queryValue: queryValue == freezed
          ? _value.queryValue
          : queryValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchQuerySubmitted implements SearchQuerySubmitted {
  const _$SearchQuerySubmitted({required this.queryValue});

  @override
  final String queryValue;

  @override
  String toString() {
    return 'SearchEvent.searchQuerySubmitted(queryValue: $queryValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchQuerySubmitted &&
            const DeepCollectionEquality()
                .equals(other.queryValue, queryValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(queryValue));

  @JsonKey(ignore: true)
  @override
  $SearchQuerySubmittedCopyWith<SearchQuerySubmitted> get copyWith =>
      _$SearchQuerySubmittedCopyWithImpl<SearchQuerySubmitted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String queryValue) searchQueryTyped,
    required TResult Function(String queryValue) searchQuerySubmitted,
    required TResult Function(String suggestion) searchSuggetionPressed,
    required TResult Function(String suggestion, String queryValue)
        searchSuggetionRemoved,
    required TResult Function() searchClearBtnPressed,
    required TResult Function() searchBackArrowBtnPressed,
  }) {
    return searchQuerySubmitted(queryValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String queryValue)? searchQueryTyped,
    TResult Function(String queryValue)? searchQuerySubmitted,
    TResult Function(String suggestion)? searchSuggetionPressed,
    TResult Function(String suggestion, String queryValue)?
        searchSuggetionRemoved,
    TResult Function()? searchClearBtnPressed,
    TResult Function()? searchBackArrowBtnPressed,
  }) {
    return searchQuerySubmitted?.call(queryValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String queryValue)? searchQueryTyped,
    TResult Function(String queryValue)? searchQuerySubmitted,
    TResult Function(String suggestion)? searchSuggetionPressed,
    TResult Function(String suggestion, String queryValue)?
        searchSuggetionRemoved,
    TResult Function()? searchClearBtnPressed,
    TResult Function()? searchBackArrowBtnPressed,
    required TResult orElse(),
  }) {
    if (searchQuerySubmitted != null) {
      return searchQuerySubmitted(queryValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchQueryTyped value) searchQueryTyped,
    required TResult Function(SearchQuerySubmitted value) searchQuerySubmitted,
    required TResult Function(SearchSuggetionPressed value)
        searchSuggetionPressed,
    required TResult Function(SearchSuggetionRemoved value)
        searchSuggetionRemoved,
    required TResult Function(SearchClearBtnPressed value)
        searchClearBtnPressed,
    required TResult Function(SearchBackArrowBtnPressed value)
        searchBackArrowBtnPressed,
  }) {
    return searchQuerySubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchQueryTyped value)? searchQueryTyped,
    TResult Function(SearchQuerySubmitted value)? searchQuerySubmitted,
    TResult Function(SearchSuggetionPressed value)? searchSuggetionPressed,
    TResult Function(SearchSuggetionRemoved value)? searchSuggetionRemoved,
    TResult Function(SearchClearBtnPressed value)? searchClearBtnPressed,
    TResult Function(SearchBackArrowBtnPressed value)?
        searchBackArrowBtnPressed,
  }) {
    return searchQuerySubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchQueryTyped value)? searchQueryTyped,
    TResult Function(SearchQuerySubmitted value)? searchQuerySubmitted,
    TResult Function(SearchSuggetionPressed value)? searchSuggetionPressed,
    TResult Function(SearchSuggetionRemoved value)? searchSuggetionRemoved,
    TResult Function(SearchClearBtnPressed value)? searchClearBtnPressed,
    TResult Function(SearchBackArrowBtnPressed value)?
        searchBackArrowBtnPressed,
    required TResult orElse(),
  }) {
    if (searchQuerySubmitted != null) {
      return searchQuerySubmitted(this);
    }
    return orElse();
  }
}

abstract class SearchQuerySubmitted implements SearchEvent {
  const factory SearchQuerySubmitted({required String queryValue}) =
      _$SearchQuerySubmitted;

  String get queryValue;
  @JsonKey(ignore: true)
  $SearchQuerySubmittedCopyWith<SearchQuerySubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSuggetionPressedCopyWith<$Res> {
  factory $SearchSuggetionPressedCopyWith(SearchSuggetionPressed value,
          $Res Function(SearchSuggetionPressed) then) =
      _$SearchSuggetionPressedCopyWithImpl<$Res>;
  $Res call({String suggestion});
}

/// @nodoc
class _$SearchSuggetionPressedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $SearchSuggetionPressedCopyWith<$Res> {
  _$SearchSuggetionPressedCopyWithImpl(SearchSuggetionPressed _value,
      $Res Function(SearchSuggetionPressed) _then)
      : super(_value, (v) => _then(v as SearchSuggetionPressed));

  @override
  SearchSuggetionPressed get _value => super._value as SearchSuggetionPressed;

  @override
  $Res call({
    Object? suggestion = freezed,
  }) {
    return _then(SearchSuggetionPressed(
      suggestion: suggestion == freezed
          ? _value.suggestion
          : suggestion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchSuggetionPressed implements SearchSuggetionPressed {
  const _$SearchSuggetionPressed({required this.suggestion});

  @override
  final String suggestion;

  @override
  String toString() {
    return 'SearchEvent.searchSuggetionPressed(suggestion: $suggestion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchSuggetionPressed &&
            const DeepCollectionEquality()
                .equals(other.suggestion, suggestion));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(suggestion));

  @JsonKey(ignore: true)
  @override
  $SearchSuggetionPressedCopyWith<SearchSuggetionPressed> get copyWith =>
      _$SearchSuggetionPressedCopyWithImpl<SearchSuggetionPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String queryValue) searchQueryTyped,
    required TResult Function(String queryValue) searchQuerySubmitted,
    required TResult Function(String suggestion) searchSuggetionPressed,
    required TResult Function(String suggestion, String queryValue)
        searchSuggetionRemoved,
    required TResult Function() searchClearBtnPressed,
    required TResult Function() searchBackArrowBtnPressed,
  }) {
    return searchSuggetionPressed(suggestion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String queryValue)? searchQueryTyped,
    TResult Function(String queryValue)? searchQuerySubmitted,
    TResult Function(String suggestion)? searchSuggetionPressed,
    TResult Function(String suggestion, String queryValue)?
        searchSuggetionRemoved,
    TResult Function()? searchClearBtnPressed,
    TResult Function()? searchBackArrowBtnPressed,
  }) {
    return searchSuggetionPressed?.call(suggestion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String queryValue)? searchQueryTyped,
    TResult Function(String queryValue)? searchQuerySubmitted,
    TResult Function(String suggestion)? searchSuggetionPressed,
    TResult Function(String suggestion, String queryValue)?
        searchSuggetionRemoved,
    TResult Function()? searchClearBtnPressed,
    TResult Function()? searchBackArrowBtnPressed,
    required TResult orElse(),
  }) {
    if (searchSuggetionPressed != null) {
      return searchSuggetionPressed(suggestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchQueryTyped value) searchQueryTyped,
    required TResult Function(SearchQuerySubmitted value) searchQuerySubmitted,
    required TResult Function(SearchSuggetionPressed value)
        searchSuggetionPressed,
    required TResult Function(SearchSuggetionRemoved value)
        searchSuggetionRemoved,
    required TResult Function(SearchClearBtnPressed value)
        searchClearBtnPressed,
    required TResult Function(SearchBackArrowBtnPressed value)
        searchBackArrowBtnPressed,
  }) {
    return searchSuggetionPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchQueryTyped value)? searchQueryTyped,
    TResult Function(SearchQuerySubmitted value)? searchQuerySubmitted,
    TResult Function(SearchSuggetionPressed value)? searchSuggetionPressed,
    TResult Function(SearchSuggetionRemoved value)? searchSuggetionRemoved,
    TResult Function(SearchClearBtnPressed value)? searchClearBtnPressed,
    TResult Function(SearchBackArrowBtnPressed value)?
        searchBackArrowBtnPressed,
  }) {
    return searchSuggetionPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchQueryTyped value)? searchQueryTyped,
    TResult Function(SearchQuerySubmitted value)? searchQuerySubmitted,
    TResult Function(SearchSuggetionPressed value)? searchSuggetionPressed,
    TResult Function(SearchSuggetionRemoved value)? searchSuggetionRemoved,
    TResult Function(SearchClearBtnPressed value)? searchClearBtnPressed,
    TResult Function(SearchBackArrowBtnPressed value)?
        searchBackArrowBtnPressed,
    required TResult orElse(),
  }) {
    if (searchSuggetionPressed != null) {
      return searchSuggetionPressed(this);
    }
    return orElse();
  }
}

abstract class SearchSuggetionPressed implements SearchEvent {
  const factory SearchSuggetionPressed({required String suggestion}) =
      _$SearchSuggetionPressed;

  String get suggestion;
  @JsonKey(ignore: true)
  $SearchSuggetionPressedCopyWith<SearchSuggetionPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSuggetionRemovedCopyWith<$Res> {
  factory $SearchSuggetionRemovedCopyWith(SearchSuggetionRemoved value,
          $Res Function(SearchSuggetionRemoved) then) =
      _$SearchSuggetionRemovedCopyWithImpl<$Res>;
  $Res call({String suggestion, String queryValue});
}

/// @nodoc
class _$SearchSuggetionRemovedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $SearchSuggetionRemovedCopyWith<$Res> {
  _$SearchSuggetionRemovedCopyWithImpl(SearchSuggetionRemoved _value,
      $Res Function(SearchSuggetionRemoved) _then)
      : super(_value, (v) => _then(v as SearchSuggetionRemoved));

  @override
  SearchSuggetionRemoved get _value => super._value as SearchSuggetionRemoved;

  @override
  $Res call({
    Object? suggestion = freezed,
    Object? queryValue = freezed,
  }) {
    return _then(SearchSuggetionRemoved(
      suggestion: suggestion == freezed
          ? _value.suggestion
          : suggestion // ignore: cast_nullable_to_non_nullable
              as String,
      queryValue: queryValue == freezed
          ? _value.queryValue
          : queryValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchSuggetionRemoved implements SearchSuggetionRemoved {
  const _$SearchSuggetionRemoved(
      {required this.suggestion, required this.queryValue});

  @override
  final String suggestion;
  @override
  final String queryValue;

  @override
  String toString() {
    return 'SearchEvent.searchSuggetionRemoved(suggestion: $suggestion, queryValue: $queryValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchSuggetionRemoved &&
            const DeepCollectionEquality()
                .equals(other.suggestion, suggestion) &&
            const DeepCollectionEquality()
                .equals(other.queryValue, queryValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(suggestion),
      const DeepCollectionEquality().hash(queryValue));

  @JsonKey(ignore: true)
  @override
  $SearchSuggetionRemovedCopyWith<SearchSuggetionRemoved> get copyWith =>
      _$SearchSuggetionRemovedCopyWithImpl<SearchSuggetionRemoved>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String queryValue) searchQueryTyped,
    required TResult Function(String queryValue) searchQuerySubmitted,
    required TResult Function(String suggestion) searchSuggetionPressed,
    required TResult Function(String suggestion, String queryValue)
        searchSuggetionRemoved,
    required TResult Function() searchClearBtnPressed,
    required TResult Function() searchBackArrowBtnPressed,
  }) {
    return searchSuggetionRemoved(suggestion, queryValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String queryValue)? searchQueryTyped,
    TResult Function(String queryValue)? searchQuerySubmitted,
    TResult Function(String suggestion)? searchSuggetionPressed,
    TResult Function(String suggestion, String queryValue)?
        searchSuggetionRemoved,
    TResult Function()? searchClearBtnPressed,
    TResult Function()? searchBackArrowBtnPressed,
  }) {
    return searchSuggetionRemoved?.call(suggestion, queryValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String queryValue)? searchQueryTyped,
    TResult Function(String queryValue)? searchQuerySubmitted,
    TResult Function(String suggestion)? searchSuggetionPressed,
    TResult Function(String suggestion, String queryValue)?
        searchSuggetionRemoved,
    TResult Function()? searchClearBtnPressed,
    TResult Function()? searchBackArrowBtnPressed,
    required TResult orElse(),
  }) {
    if (searchSuggetionRemoved != null) {
      return searchSuggetionRemoved(suggestion, queryValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchQueryTyped value) searchQueryTyped,
    required TResult Function(SearchQuerySubmitted value) searchQuerySubmitted,
    required TResult Function(SearchSuggetionPressed value)
        searchSuggetionPressed,
    required TResult Function(SearchSuggetionRemoved value)
        searchSuggetionRemoved,
    required TResult Function(SearchClearBtnPressed value)
        searchClearBtnPressed,
    required TResult Function(SearchBackArrowBtnPressed value)
        searchBackArrowBtnPressed,
  }) {
    return searchSuggetionRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchQueryTyped value)? searchQueryTyped,
    TResult Function(SearchQuerySubmitted value)? searchQuerySubmitted,
    TResult Function(SearchSuggetionPressed value)? searchSuggetionPressed,
    TResult Function(SearchSuggetionRemoved value)? searchSuggetionRemoved,
    TResult Function(SearchClearBtnPressed value)? searchClearBtnPressed,
    TResult Function(SearchBackArrowBtnPressed value)?
        searchBackArrowBtnPressed,
  }) {
    return searchSuggetionRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchQueryTyped value)? searchQueryTyped,
    TResult Function(SearchQuerySubmitted value)? searchQuerySubmitted,
    TResult Function(SearchSuggetionPressed value)? searchSuggetionPressed,
    TResult Function(SearchSuggetionRemoved value)? searchSuggetionRemoved,
    TResult Function(SearchClearBtnPressed value)? searchClearBtnPressed,
    TResult Function(SearchBackArrowBtnPressed value)?
        searchBackArrowBtnPressed,
    required TResult orElse(),
  }) {
    if (searchSuggetionRemoved != null) {
      return searchSuggetionRemoved(this);
    }
    return orElse();
  }
}

abstract class SearchSuggetionRemoved implements SearchEvent {
  const factory SearchSuggetionRemoved(
      {required String suggestion,
      required String queryValue}) = _$SearchSuggetionRemoved;

  String get suggestion;
  String get queryValue;
  @JsonKey(ignore: true)
  $SearchSuggetionRemovedCopyWith<SearchSuggetionRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchClearBtnPressedCopyWith<$Res> {
  factory $SearchClearBtnPressedCopyWith(SearchClearBtnPressed value,
          $Res Function(SearchClearBtnPressed) then) =
      _$SearchClearBtnPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchClearBtnPressedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $SearchClearBtnPressedCopyWith<$Res> {
  _$SearchClearBtnPressedCopyWithImpl(
      SearchClearBtnPressed _value, $Res Function(SearchClearBtnPressed) _then)
      : super(_value, (v) => _then(v as SearchClearBtnPressed));

  @override
  SearchClearBtnPressed get _value => super._value as SearchClearBtnPressed;
}

/// @nodoc

class _$SearchClearBtnPressed implements SearchClearBtnPressed {
  const _$SearchClearBtnPressed();

  @override
  String toString() {
    return 'SearchEvent.searchClearBtnPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SearchClearBtnPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String queryValue) searchQueryTyped,
    required TResult Function(String queryValue) searchQuerySubmitted,
    required TResult Function(String suggestion) searchSuggetionPressed,
    required TResult Function(String suggestion, String queryValue)
        searchSuggetionRemoved,
    required TResult Function() searchClearBtnPressed,
    required TResult Function() searchBackArrowBtnPressed,
  }) {
    return searchClearBtnPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String queryValue)? searchQueryTyped,
    TResult Function(String queryValue)? searchQuerySubmitted,
    TResult Function(String suggestion)? searchSuggetionPressed,
    TResult Function(String suggestion, String queryValue)?
        searchSuggetionRemoved,
    TResult Function()? searchClearBtnPressed,
    TResult Function()? searchBackArrowBtnPressed,
  }) {
    return searchClearBtnPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String queryValue)? searchQueryTyped,
    TResult Function(String queryValue)? searchQuerySubmitted,
    TResult Function(String suggestion)? searchSuggetionPressed,
    TResult Function(String suggestion, String queryValue)?
        searchSuggetionRemoved,
    TResult Function()? searchClearBtnPressed,
    TResult Function()? searchBackArrowBtnPressed,
    required TResult orElse(),
  }) {
    if (searchClearBtnPressed != null) {
      return searchClearBtnPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchQueryTyped value) searchQueryTyped,
    required TResult Function(SearchQuerySubmitted value) searchQuerySubmitted,
    required TResult Function(SearchSuggetionPressed value)
        searchSuggetionPressed,
    required TResult Function(SearchSuggetionRemoved value)
        searchSuggetionRemoved,
    required TResult Function(SearchClearBtnPressed value)
        searchClearBtnPressed,
    required TResult Function(SearchBackArrowBtnPressed value)
        searchBackArrowBtnPressed,
  }) {
    return searchClearBtnPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchQueryTyped value)? searchQueryTyped,
    TResult Function(SearchQuerySubmitted value)? searchQuerySubmitted,
    TResult Function(SearchSuggetionPressed value)? searchSuggetionPressed,
    TResult Function(SearchSuggetionRemoved value)? searchSuggetionRemoved,
    TResult Function(SearchClearBtnPressed value)? searchClearBtnPressed,
    TResult Function(SearchBackArrowBtnPressed value)?
        searchBackArrowBtnPressed,
  }) {
    return searchClearBtnPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchQueryTyped value)? searchQueryTyped,
    TResult Function(SearchQuerySubmitted value)? searchQuerySubmitted,
    TResult Function(SearchSuggetionPressed value)? searchSuggetionPressed,
    TResult Function(SearchSuggetionRemoved value)? searchSuggetionRemoved,
    TResult Function(SearchClearBtnPressed value)? searchClearBtnPressed,
    TResult Function(SearchBackArrowBtnPressed value)?
        searchBackArrowBtnPressed,
    required TResult orElse(),
  }) {
    if (searchClearBtnPressed != null) {
      return searchClearBtnPressed(this);
    }
    return orElse();
  }
}

abstract class SearchClearBtnPressed implements SearchEvent {
  const factory SearchClearBtnPressed() = _$SearchClearBtnPressed;
}

/// @nodoc
abstract class $SearchBackArrowBtnPressedCopyWith<$Res> {
  factory $SearchBackArrowBtnPressedCopyWith(SearchBackArrowBtnPressed value,
          $Res Function(SearchBackArrowBtnPressed) then) =
      _$SearchBackArrowBtnPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchBackArrowBtnPressedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $SearchBackArrowBtnPressedCopyWith<$Res> {
  _$SearchBackArrowBtnPressedCopyWithImpl(SearchBackArrowBtnPressed _value,
      $Res Function(SearchBackArrowBtnPressed) _then)
      : super(_value, (v) => _then(v as SearchBackArrowBtnPressed));

  @override
  SearchBackArrowBtnPressed get _value =>
      super._value as SearchBackArrowBtnPressed;
}

/// @nodoc

class _$SearchBackArrowBtnPressed implements SearchBackArrowBtnPressed {
  const _$SearchBackArrowBtnPressed();

  @override
  String toString() {
    return 'SearchEvent.searchBackArrowBtnPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchBackArrowBtnPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String queryValue) searchQueryTyped,
    required TResult Function(String queryValue) searchQuerySubmitted,
    required TResult Function(String suggestion) searchSuggetionPressed,
    required TResult Function(String suggestion, String queryValue)
        searchSuggetionRemoved,
    required TResult Function() searchClearBtnPressed,
    required TResult Function() searchBackArrowBtnPressed,
  }) {
    return searchBackArrowBtnPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String queryValue)? searchQueryTyped,
    TResult Function(String queryValue)? searchQuerySubmitted,
    TResult Function(String suggestion)? searchSuggetionPressed,
    TResult Function(String suggestion, String queryValue)?
        searchSuggetionRemoved,
    TResult Function()? searchClearBtnPressed,
    TResult Function()? searchBackArrowBtnPressed,
  }) {
    return searchBackArrowBtnPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String queryValue)? searchQueryTyped,
    TResult Function(String queryValue)? searchQuerySubmitted,
    TResult Function(String suggestion)? searchSuggetionPressed,
    TResult Function(String suggestion, String queryValue)?
        searchSuggetionRemoved,
    TResult Function()? searchClearBtnPressed,
    TResult Function()? searchBackArrowBtnPressed,
    required TResult orElse(),
  }) {
    if (searchBackArrowBtnPressed != null) {
      return searchBackArrowBtnPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchQueryTyped value) searchQueryTyped,
    required TResult Function(SearchQuerySubmitted value) searchQuerySubmitted,
    required TResult Function(SearchSuggetionPressed value)
        searchSuggetionPressed,
    required TResult Function(SearchSuggetionRemoved value)
        searchSuggetionRemoved,
    required TResult Function(SearchClearBtnPressed value)
        searchClearBtnPressed,
    required TResult Function(SearchBackArrowBtnPressed value)
        searchBackArrowBtnPressed,
  }) {
    return searchBackArrowBtnPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchQueryTyped value)? searchQueryTyped,
    TResult Function(SearchQuerySubmitted value)? searchQuerySubmitted,
    TResult Function(SearchSuggetionPressed value)? searchSuggetionPressed,
    TResult Function(SearchSuggetionRemoved value)? searchSuggetionRemoved,
    TResult Function(SearchClearBtnPressed value)? searchClearBtnPressed,
    TResult Function(SearchBackArrowBtnPressed value)?
        searchBackArrowBtnPressed,
  }) {
    return searchBackArrowBtnPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchQueryTyped value)? searchQueryTyped,
    TResult Function(SearchQuerySubmitted value)? searchQuerySubmitted,
    TResult Function(SearchSuggetionPressed value)? searchSuggetionPressed,
    TResult Function(SearchSuggetionRemoved value)? searchSuggetionRemoved,
    TResult Function(SearchClearBtnPressed value)? searchClearBtnPressed,
    TResult Function(SearchBackArrowBtnPressed value)?
        searchBackArrowBtnPressed,
    required TResult orElse(),
  }) {
    if (searchBackArrowBtnPressed != null) {
      return searchBackArrowBtnPressed(this);
    }
    return orElse();
  }
}

abstract class SearchBackArrowBtnPressed implements SearchEvent {
  const factory SearchBackArrowBtnPressed() = _$SearchBackArrowBtnPressed;
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
