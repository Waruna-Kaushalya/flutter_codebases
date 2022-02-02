part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {}

//! TypeSearchQuery
//? type one bye one latter
//? retreive one by one ltter
//? match query with city and disply suggest
class TypeSearchQuery extends SearchEvent {
  final String searchQuery;

  TypeSearchQuery({
    required this.searchQuery,
  });

  @override
  List<Object?> get props => [searchQuery];
}

//! EnterandHitSearchQuery
//? after the type search qury user hit search button
//? match query with city list
class EnterAndHitSearchQuery extends SearchEvent {
  final String enteredQuery;
  EnterAndHitSearchQuery({
    required this.enteredQuery,
  });

  @override
  List<Object?> get props => [];
}

//! SelectSuggestQuery
//? user selct suggested query
//? get suggested value
//? match value with city list
class SelectSuggestQuery extends SearchEvent {
  final String selectedSuggestQuery;
  SelectSuggestQuery({
    required this.selectedSuggestQuery,
  });
  @override
  List<Object?> get props => [selectedSuggestQuery];
}

//! ClearSearchQuery
class ClearSearchQuery extends SearchEvent {
  @override
  List<Object?> get props => [];
}
