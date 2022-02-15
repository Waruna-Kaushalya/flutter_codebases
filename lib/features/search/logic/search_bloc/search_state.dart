part of 'search_bloc.dart';

enum SearchStateStatus { initial, loading, success, failure }

@freezed
class SearchState with _$SearchState {
  factory SearchState({
    required SearchStateStatus stateStatus,
    List<String>? suggestions,
    List<String>? results,
    String? queryValue,
    String? errorMsg,
  }) = _SearchState;

  factory SearchState.fromJson(Map<String, dynamic> json) =>
      _$SearchStateFromJson(json);
}
