part of 'search_bloc.dart';

// @freezed
// class SearchState with _$SearchState {
//   //? query must be cleared
//   //? display suggestionss
//   //? start typing
//   //? display suggestions
//   const factory SearchState.searchQueryInitial(
//       List<String> suggestions, String queryValue) = _TypeQuery;
//   //? after hit enter show loading indicator
//   const factory SearchState.loadingSearch() = _LoadingSearch;

//   const factory SearchState.suggestValueToquery(String queryValue) =
//       _SuggestValueToquer;
//   //? display search quey in search bar
//   //? diaplay dearch result in body
//   const factory SearchState.displaySearchResult() = _DisplaySearchResult;
//   //? whan search is not available diaply "Not Found" msg in body
//   const factory SearchState.displayNotFound() = _DisplayNotFound;
// }

// //! ==

@immutable
abstract class SearchState extends Equatable {}

//!
//? query must be cleared
//? display suggestionss
//? start typing
//? display suggestions
class SearchQueryInitial extends SearchState {
  final List<String> suggestions;
  final String queryValue;
  SearchQueryInitial({
    required this.suggestions,
    required this.queryValue,
  });
  @override
  List<Object?> get props => [suggestions, queryValue];
}

//!
//? after hit enter show loading indicator
class LoadingSearch extends SearchState {
  @override
  List<Object?> get props => [];
}

//!
//? When user click suggested value upfate text field
class SuggestValueToquery extends SearchState {
  final String queryValue;

  SuggestValueToquery({
    required this.queryValue,
  });
  @override
  List<Object?> get props => [queryValue];
}

//!
//? display search quey in search bar
//? diaplay dearch result in body
class DisplaySearchResult extends SearchState {
  @override
  List<Object?> get props => [];
}

//!
//? whan search is not available diaply "Not Found" msg in body
class CityNotDound extends SearchState {
  @override
  List<Object?> get props => [];
}
