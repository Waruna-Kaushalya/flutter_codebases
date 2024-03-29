//! --------------- second method

// part of 'search_bloc.dart';

// abstract class SearchEvent extends Equatable {
//   const SearchEvent();
// }

// class SearchQueryTyped extends SearchEvent {
//   const SearchQueryTyped({
//     required this.queryValue,
//   });

//   final String queryValue;

//   @override
//   List<Object?> get props => [queryValue];
// }

// class SearchQuerySubmitted extends SearchEvent {
//   const SearchQuerySubmitted({
//     required this.queryValue,
//   });

//   final String queryValue;

//   @override
//   List<Object?> get props => [queryValue];
// }

// class SearchSuggetionPressed extends SearchEvent {
//   const SearchSuggetionPressed({
//     required this.suggestion,
//   });

//   final String suggestion;

//   @override
//   List<Object?> get props => [suggestion];
// }

// class SearchSuggetionRemoved extends SearchEvent {
//   const SearchSuggetionRemoved({
//     required this.suggestion,
//     required this.queryValue,
//   });

//   final String suggestion;
//   final String queryValue;

//   @override
//   List<Object?> get props => [suggestion, queryValue];
// }

// class SearchClearBtnPressed extends SearchEvent {
//   @override
//   List<Object?> get props => [];
// }

// class SearchBackArrowBtnPressed extends SearchEvent {
//   @override
//   List<Object?> get props => [];
// }

//! --------------- thrid method

part of 'search_bloc.dart';

@freezed
abstract class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchQueryTyped({required String queryValue}) =
      SearchQueryTyped;
  const factory SearchEvent.searchQuerySubmitted({required String queryValue}) =
      SearchQuerySubmitted;
  const factory SearchEvent.searchSuggetionPressed(
      {required String suggestion}) = SearchSuggetionPressed;
  const factory SearchEvent.searchSuggetionRemoved(
      {required String suggestion,
      required String queryValue}) = SearchSuggetionRemoved;
  const factory SearchEvent.searchClearBtnPressed() = SearchClearBtnPressed;
  const factory SearchEvent.searchBackArrowBtnPressed() =
      SearchBackArrowBtnPressed;
}
