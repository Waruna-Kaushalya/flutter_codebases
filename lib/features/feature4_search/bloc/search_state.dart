// ! ------ 1st Method
// part of 'search_bloc.dart';

// @immutable
// abstract class SearchState extends Equatable {}

// //!
// //? query must be cleared
// //? display suggestionss
// //? start typing
// //? display suggestions
// class SearchQueryInitial extends SearchState {
//   final List<String> suggestions;
//   final String queryValue;
//   SearchQueryInitial({
//     required this.suggestions,
//     required this.queryValue,
//   });
//   @override
//   List<Object?> get props => [suggestions, queryValue];
// }

// //!
// //? after hit enter show loading indicator
// class LoadingSearch extends SearchState {
//   @override
//   List<Object?> get props => [];
// }

// //!
// //? When user click suggested value upfate text field
// class SuggestValueToquery extends SearchState {
//   final String queryValue;

//   SuggestValueToquery({
//     required this.queryValue,
//   });
//   @override
//   List<Object?> get props => [queryValue];
// }

// //!
// //? display search quey in search bar
// //? diaplay dearch result in body
// class DisplaySearchResult extends SearchState {
//   @override
//   List<Object?> get props => [];
// }

// //!
// //? whan search is not available diaply "Not Found" msg in body
// class CityNotDound extends SearchState {
//   @override
//   List<Object?> get props => [];
// }

// ! ------ 2nd mthod

part of 'search_bloc.dart';

enum SearchStateStatus {
  searchInitialState,
  searchResultLoadingState,
  searchResultShowState,
  searchNotFoundState,
}

extension SearchStatusX on SearchStateStatus {
  bool get isSearchInitialState => this == SearchStateStatus.searchInitialState;
  bool get isSearchResultLoadingState =>
      this == SearchStateStatus.searchResultLoadingState;
  bool get isSearchResultShowState =>
      this == SearchStateStatus.searchResultShowState;
  bool get isSearchNotFoundState =>
      this == SearchStateStatus.searchNotFoundState;
}

@freezed
class SearchState with _$SearchState {
  factory SearchState({
    required SearchStateStatus stateStatus,
    List<String>? suggestions,
    List<String>? results,
    String? queryValue,
  }) = _SearchState;

  factory SearchState.fromJson(Map<String, dynamic> json) =>
      _$SearchStateFromJson(json);
}

//! ------ 3rd method

// part of 'search_bloc.dart';

// enum SearchStateStatus {
//   searchInitial,
//   resultLoading,
//   showResult,
//   cityNotFound,
//   searchEnd,
// }

// extension SearchStatusX on SearchStateStatus {
//   bool get isSearchInitial => this == SearchStateStatus.searchInitial;
//   bool get isResultLoading => this == SearchStateStatus.resultLoading;
//   bool get isShowResult => this == SearchStateStatus.showResult;
//   bool get isCityNotFound => this == SearchStateStatus.cityNotFound;
//   bool get isSearchEnd => this == SearchStateStatus.searchEnd;
// }

// @JsonSerializable()
// class SearchState extends Equatable {
//   final SearchStateStatus stateStatus;
//   final List<String>? suggestions;
//   final List<String>? results;
//   final String? queryValue;

//   const SearchState({
//     this.stateStatus = SearchStateStatus.searchInitial,
//     this.suggestions,
//     this.results,
//     this.queryValue,
//   });

//   SearchState copyWith({
//     SearchStateStatus? stateStatus,
//     List<String>? suggestions,
//     List<String>? results,
//     String? queryValue,
//   }) {
//     return SearchState(
//       stateStatus: stateStatus ?? this.stateStatus,
//       suggestions: suggestions ?? this.suggestions,
//       results: results ?? this.results,
//       queryValue: queryValue ?? this.queryValue,
//     );
//   }

//   @override
//   List<Object?> get props => [stateStatus, suggestions, results, queryValue];

//   /// Connect the generated [_$PersonFromJson] function to the `fromJson`
//   /// factory.
//   factory SearchState.fromJson(Map<String, dynamic> json) =>
//       _$SearchStateFromJson(json);

//   /// Connect the generated [_$PersonToJson] function to the `toJson` method.
//   Map<String, dynamic> toJson() => _$SearchStateToJson(this);
// }
