part of 'search_bloc.dart';

enum SearchEventStatus {
  typedInSearchbar,
  clickedSuggetion,
  submittedSearch,
  clickedClearBtn,
  clickedBackArrowBtn,
  clickedSuggetionRemoveBtn,
}

@freezed
class SearchEvent with _$SearchEvent {
  factory SearchEvent({
    required SearchEventStatus eventStatus,
    List<String>? suggestions,
    String? suggestion,
    String? queryValue,
  }) = _SearchEvent;
}

//! --------------- second method

// abstract class SearchEvent extends Equatable {
//   const SearchEvent();
// }

// class TypedInSearchbar extends SearchEvent {
//   const TypedInSearchbar({
//     required this.queryValue,
//   });

//   final String queryValue;

//   @override
//   List<Object?> get props => [queryValue];
// }

// class ClickedSuggetion extends SearchEvent {
//   const ClickedSuggetion({
//     required this.queryValue,
//   });

//   final String queryValue;

//   @override
//   List<Object?> get props => [queryValue];
// }

// class SubmittedSearch extends SearchEvent {
//   const SubmittedSearch({
//     required this.queryValue,
//   });

//   final String queryValue;

//   @override
//   List<Object?> get props => [queryValue];
// }

// class ClickedSuggetionRemoveBtn extends SearchEvent {
//   @override
//   List<Object?> get props => [];
// }

// class ClickedClearBtn extends SearchEvent {
//   @override
//   List<Object?> get props => [];
// }

// class ClickedBackArrowBtn extends SearchEvent {
//   @override
//   List<Object?> get props => [];
// }
