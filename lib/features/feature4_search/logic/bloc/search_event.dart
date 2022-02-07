// part of 'search_bloc.dart';

// enum SearchEventStatus {
//   typedInSearchbar,
//   clickedSuggetion,
//   submittedSearch,
//   clickedClearBtn,
//   clickedBackArrowBtn,
//   clickedSuggetionRemoveBtn,
// }

// @freezed
// class SearchEvent with _$SearchEvent {
//   factory SearchEvent({
//     required SearchEventStatus eventStatus,
//     List<String>? suggestions,
//     String? suggestion,
//     String? queryValue,
//   }) = _SearchEvent;
// }

//! --------------- second method

part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();
}

class SearchTyped extends SearchEvent {
  const SearchTyped({
    required this.queryValue,
  });

  final String queryValue;

  @override
  List<Object?> get props => [queryValue];
}

class SearchSubmitted extends SearchEvent {
  const SearchSubmitted({
    required this.queryValue,
  });

  final String queryValue;

  @override
  List<Object?> get props => [queryValue];
}

class SearchClickedSuggetion extends SearchEvent {
  const SearchClickedSuggetion({
    required this.suggestion,
  });

  final String suggestion;

  @override
  List<Object?> get props => [suggestion];
}

class SearchClickedSuggetionRemove extends SearchEvent {
  const SearchClickedSuggetionRemove({
    required this.suggestion,
    required this.queryValue,
  });

  final String suggestion;
  final String queryValue;

  @override
  List<Object?> get props => [suggestion, queryValue];
}

class SearchClickedClear extends SearchEvent {
  @override
  List<Object?> get props => [];
}

class SearchClickedBackArrow extends SearchEvent {
  @override
  List<Object?> get props => [];
}
