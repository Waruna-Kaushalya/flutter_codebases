part of 'search_bloc.dart';

enum SearchStateStatus { initial, loading, success, failure }

extension SearchStateStatusX on SearchStateStatus {
  bool get isInitial => this == SearchStateStatus.initial;
  bool get isLoading => this == SearchStateStatus.loading;
  bool get isSuccess => this == SearchStateStatus.success;
  bool get isFailure => this == SearchStateStatus.failure;
}

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
