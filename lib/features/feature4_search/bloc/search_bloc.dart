import 'package:bloc/bloc.dart';
import 'package:flutter_codebase/features/feature4_search/data/cities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:developer' as developer;

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';
part 'search_bloc.g.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc()
      : super(SearchState(
          queryValue: "",
          stateStatus: SearchStateStatus.searchInitialState,
          suggestions: recentCities,
        )) {
    on<SearchEvent>((event, emit) async {
      if (event.eventStatus == SearchEventStatus.typeInSearchbarEvnt) {
        String queryValue = event.queryValue!.toLowerCase().trim();

        final suggestions =
            compareUserTypeLettersWithSuggestionList(queryValue: queryValue);

        emit(
          state.copyWith(
            stateStatus: SearchStateStatus.searchInitialState,
            suggestions: suggestions,
            queryValue: queryValue,
          ),
        );
      } else if (event.eventStatus == SearchEventStatus.submittedSearchEvnt) {
        String queryValue = event.queryValue!.toLowerCase().trim();

        emit(
          state.copyWith(
            stateStatus: SearchStateStatus.searchResultLoadingState,
            queryValue: event.queryValue,
          ),
        );

        await Future.delayed(const Duration(seconds: 1));

        compareQueryValueWithSuggestionList(queryValue: queryValue);

        final lsitExactlyValue =
            compareQueryValueWithDataList(queryValue: queryValue);

        //* Two Options
        //? Disply if only exact value availble
        // final lsitExactlyValue = cities.where((element) {
        //   return element.toLowerCase() == queryValueS;
        // }).toList();

        //? Disply all the values contains with query
        // final lsitExactlyValue = cities.where((element) {
        //   return element.toLowerCase().contains(queryValueS);
        // }).toList();
        //*

        lsitExactlyValue.isNotEmpty
            ? emit(
                state.copyWith(
                  stateStatus: SearchStateStatus.searchResultShowState,
                  queryValue: queryValue,
                  results: lsitExactlyValue,
                ),
              )
            : emit(
                state.copyWith(
                  stateStatus: SearchStateStatus.searchNotFoundState,
                ),
              );
      } else if (event.eventStatus == SearchEventStatus.clickedSuggetionEvnt) {
        emit(
          state.copyWith(
            stateStatus: SearchStateStatus.searchResultLoadingState,
            queryValue: event.queryValue,
          ),
        );

        await Future.delayed(const Duration(seconds: 1));

        String queryValueS = event.queryValue!.toLowerCase().trim();

        compareQueryValueWithSuggestionList(queryValue: queryValueS);

        final lsitExactlyValue =
            compareQueryValueWithDataList(queryValue: queryValueS);

        lsitExactlyValue.isNotEmpty
            ? emit(
                state.copyWith(
                  stateStatus: SearchStateStatus.searchResultShowState,
                  queryValue: queryValueS,
                  results: lsitExactlyValue,
                ),
              )
            : emit(
                state.copyWith(
                  stateStatus: SearchStateStatus.searchNotFoundState,
                ),
              );
      } else if (event.eventStatus ==
          SearchEventStatus.clickedBackArrowBtnEvnt) {
        emit(
          state.copyWith(
            stateStatus: SearchStateStatus.searchInitialState,
            suggestions: recentCities,
            queryValue: "",
          ),
        );
      } else if (event.eventStatus == SearchEventStatus.clickedClearBtnEvnt) {
        emit(
          state.copyWith(
            stateStatus: SearchStateStatus.searchInitialState,
            suggestions: recentCities,
            queryValue: "",
          ),
        );
      } else if (event.eventStatus ==
          SearchEventStatus.clickedSuggetionRemoveBtnEvnt) {
        final value = event.suggestion!.toLowerCase().trim();
        //* -- Why emited loading state
        //? when emit same state bloc not respondend to second state. therefor emit loading state without confuced user and useful manner
        emit(
          state.copyWith(
            stateStatus: SearchStateStatus.searchResultLoadingState,
            //? if not check null then print "null" in search bar
            queryValue: event.queryValue ?? "",
          ),
        );
        await Future.delayed(const Duration(milliseconds: 50));
        //*

        recentCities.removeWhere((item) => item.toLowerCase() == value);

        developer.log(recentCities.toString(), name: 'recentCities');

        emit(
          state.copyWith(
            stateStatus: SearchStateStatus.searchInitialState,
            suggestions: recentCities,
            queryValue: "",
          ),
        );
      }
    });
  }

  List<String> compareUserTypeLettersWithSuggestionList(
      {required String queryValue}) {
    //? Comparing the user type letters with the suggestion value
    final suggestions = queryValue.isEmpty
        ? recentCities
        : recentCities.where(
            (city) {
              return city.toLowerCase().startsWith(queryValue);
            },
          ).toList();

    return suggestions;
  }

  List<String> compareQueryValueWithDataList({required String queryValue}) {
    //* Two Options
    //? Disply if only exact value availble
    final lsitExactlyValue = cities.where((element) {
      return element.toLowerCase() == queryValue;
    }).toList();

    //? Disply all the values contains with query
    // final lsitExactlyValue = cities.where((element) {
    //   return element.toLowerCase().contains(queryValueS);
    // }).toList();
    //*

    return lsitExactlyValue;
  }

  void compareQueryValueWithSuggestionList({required String queryValue}) {
    final String queryValueTrimed = queryValue.toLowerCase().trim();

    //? Disply if only exact value availble
    final lsitExactlyValue = recentCities.where((element) {
      return element.toLowerCase() == queryValueTrimed;
    }).toList();

    //? if city is not availbe in list, add city in to top of the list
    if (lsitExactlyValue.isEmpty) {
      recentCities.insert(0, queryValueTrimed);
    }

    //? if city is availbe in list, then delete existing one and add in to top of the list
    if (lsitExactlyValue.isNotEmpty) {
      recentCities.removeWhere(
        (item) => item.toLowerCase() == queryValueTrimed,
      );
      recentCities.insert(0, queryValueTrimed);
    }

    //? Disply all the values contains with query
    // final lsitExactlyValue = cities.where((element) {
    //   return element.toLowerCase().contains(queryValueS);
    // }).toList();
    //*
  }
}
