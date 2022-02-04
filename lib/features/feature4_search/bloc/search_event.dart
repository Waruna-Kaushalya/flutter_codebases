// part of 'search_bloc.dart';

// abstract class SearchEvent extends Equatable {}

// //! TypeSearchQuery
// //? type one bye one latter
// //? retreive one by one ltter
// //? match query with city and disply suggest
// class TypeSearchQuery extends SearchEvent {
//   final String searchQuery;

//   TypeSearchQuery({
//     required this.searchQuery,
//   });

//   @override
//   List<Object?> get props => [searchQuery];
// }

// //! EnterandHitSearchQuery
// //? after the type search qury user hit search button
// //? match query with city list
// class EnterAndHitSearchQuery extends SearchEvent {
//   final String enteredQuery;
//   EnterAndHitSearchQuery({
//     required this.enteredQuery,
//   });

//   @override
//   List<Object?> get props => [];
// }

// //! SelectSuggestQuery
// //? user selct suggested query
// //? get suggested value
// //? match value with city list
// class SelectSuggestQuery extends SearchEvent {
//   final String selectedSuggestQuery;
//   SelectSuggestQuery({
//     required this.selectedSuggestQuery,
//   });
//   @override
//   List<Object?> get props => [selectedSuggestQuery];
// }

// //! ClearSearchQuery
// class ClearSearchQuery extends SearchEvent {
//   @override
//   List<Object?> get props => [];
// }

part of 'search_bloc.dart';

enum SearchEventStatus {
  typeInTheSearchbar,
  suggestedCityClicked,
  onSubmitted,
  clickedClearIconButton,
  clickedBackArrowButton,
}

extension SearchEventStatusX on SearchEventStatus {
  bool get isTypeInTheSearchbar => this == SearchEventStatus.typeInTheSearchbar;
  bool get isSuggestedCityClicked =>
      this == SearchEventStatus.suggestedCityClicked;
  bool get isOnSubmitted => this == SearchEventStatus.onSubmitted;
  bool get isClickedClearIconButton =>
      this == SearchEventStatus.clickedClearIconButton;
  bool get isClickedBackArrowButton =>
      this == SearchEventStatus.clickedBackArrowButton;
}

@freezed
class SearchEvent with _$SearchEvent {
  factory SearchEvent({
    required SearchEventStatus eventStatus,
    List<String>? suggestions,
    String? queryValue,
  }) = _SearchEvent;

  factory SearchEvent.fromJson(Map<String, dynamic> json) =>
      _$SearchEventFromJson(json);
}
