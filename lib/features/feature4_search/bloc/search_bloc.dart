import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_codebase/features/feature4_search/data/cities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:developer' as developer;

part 'search_event.dart';
part 'search_state.dart';
// part 'search_bloc.freezed.dart';
// part 'search_bloc.g.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc()
      : super(SearchQueryInitial(queryValue: "", suggestions: cities)) {
    on<SearchEvent>((event, emit) {
      final cityList = cities;
      if (event is TypeSearchQuery) {
        final queryValue = event.searchQuery.trim();
        final suggestions = queryValue.isEmpty
            ? cities
            : cities.where(
                (city) {
                  final cityLower = city.toLowerCase();
                  final queryLower = queryValue.toLowerCase();
                  return cityLower.startsWith(queryLower);
                },
              ).toList();
        print(suggestions);
        //!
        emit(SearchQueryInitial(
            queryValue: queryValue, suggestions: suggestions));

        developer.log(
          '------------$suggestions',
          name: 'suggestions',
        );
      }
      if (event is EnterAndHitSearchQuery) {
        print("==========================");
        print(event.enteredQuery);
        print("==========================");
      }
      if (event is SelectSuggestQuery) {
        //!event.selectedSuggestQuery
        emit(SuggestValueToquery(
          queryValue: event.selectedSuggestQuery,
        ));
      }
      if (event is ClearSearchQuery) {}
    });
  }
}
