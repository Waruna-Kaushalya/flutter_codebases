// //! --------------------------- 1st method

// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter_codebase/features/feature4_search/data/cities.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'dart:developer' as developer;

// part 'search_event.dart';
// part 'search_state.dart';
// part 'search_bloc.freezed.dart';
// part 'search_bloc.g.dart';

// class SearchBloc extends Bloc<SearchEvent, SearchState> {
//   SearchBloc()
//       : super(SearchState(
//           queryValue: "",
//           stateStatus: SearchStateStatus.initial,
//           suggestions: recentCities,
//         )) {
//     on<SearchEvent>((event, emit) async {
//       //! type In Search bar Event
//       if (event.eventStatus == SearchEventStatus.typedInSearchbar) {
//         String queryValue = event.queryValue!.toLowerCase().trim();

//         final suggestions =
//             compareUserTypeLettersWithSuggestionList(queryValue: queryValue);

//         emit(state.copyWith(
//           stateStatus: SearchStateStatus.initial,
//           suggestions: suggestions,
//           queryValue: queryValue,
//         ));
//       }
//       //! submitted Search value Evnt
//       if (event.eventStatus == SearchEventStatus.submittedSearch) {
//         String queryValue = event.queryValue!.toLowerCase().trim();

//         emit(state.copyWith(
//           stateStatus: SearchStateStatus.loading,
//           queryValue: event.queryValue,
//         ));

//         if (queryValue.isEmpty) {
//           //* if query empty, warning send to user to enter city name
//           emit(state.copyWith(
//             stateStatus: SearchStateStatus.failure,
//             errorMsg: "Please enter a city name. Ex: London",
//           ));
//         } else {
//           await Future.delayed(const Duration(seconds: 1));

//           compareQueryValueWithSuggestionList(queryValue: queryValue);

//           final lsitExactlyValue =
//               compareQueryValueWithDataList(queryValue: queryValue);

//           lsitExactlyValue.isNotEmpty
//               ? emit(state.copyWith(
//                   stateStatus: SearchStateStatus.success,
//                   queryValue: queryValue,
//                   results: lsitExactlyValue,
//                 ))
//               : emit(state.copyWith(
//                   stateStatus: SearchStateStatus.failure,
//                   errorMsg: "City Not Found",
//                 ));
//         }
//       }
//       //! clicked Suggeted value Event
//       if (event.eventStatus == SearchEventStatus.clickedSuggetion) {
//         String suggestionValue = event.suggestion!.toLowerCase().trim();
//         emit(state.copyWith(
//           stateStatus: SearchStateStatus.loading,
//           queryValue: suggestionValue,
//         ));

//         await Future.delayed(const Duration(seconds: 1));

//         compareQueryValueWithSuggestionList(
//           queryValue: suggestionValue,
//         );

//         final lsitExactlyValue = compareQueryValueWithDataList(
//           queryValue: suggestionValue,
//         );

//         lsitExactlyValue.isNotEmpty
//             ? emit(state.copyWith(
//                 stateStatus: SearchStateStatus.success,
//                 queryValue: suggestionValue,
//                 results: lsitExactlyValue,
//               ))
//             : emit(state.copyWith(
//                 stateStatus: SearchStateStatus.failure,
//                 errorMsg: "City Not Found",
//               ));
//       }
//       //! clicked Back Arrow Button Event
//       if (event.eventStatus == SearchEventStatus.clickedBackArrowBtn) {
//         emit(state.copyWith(
//           stateStatus: SearchStateStatus.initial,
//           suggestions: recentCities,
//           queryValue: "",
//         ));
//       }
//       //! clicked Clear Button Evnt
//       if (event.eventStatus == SearchEventStatus.clickedClearBtn) {
//         emit(state.copyWith(
//           stateStatus: SearchStateStatus.initial,
//           suggestions: recentCities,
//           queryValue: "",
//         ));
//       }
//       //! clicked Suggetion Remove Btn Evnt
//       if (event.eventStatus == SearchEventStatus.clickedSuggetionRemoveBtn) {
//         final suggestedValue = event.suggestion!.toLowerCase().trim();

//         //* -- Why emited loading state
//         //* when emit same state bloc not respondend to second state. therefor emit loading state without confuced user and useful manner
//         emit(state.copyWith(
//           stateStatus: SearchStateStatus.loading,
//           //* if not check null then print "null" in search bar
//           queryValue: event.queryValue ?? "",
//         ));
//         await Future.delayed(const Duration(milliseconds: 50));
//         //*

//         recentCities.removeWhere(
//           (item) => item.toLowerCase() == suggestedValue,
//         );

//         developer.log(recentCities.toString(), name: 'recentCities');

//         emit(state.copyWith(
//           stateStatus: SearchStateStatus.initial,
//           suggestions: recentCities,
//           queryValue: "",
//         ));
//       }
//     });
//   }

//   List<String> compareUserTypeLettersWithSuggestionList(
//       {required String queryValue}) {
//     // Comparing the user type letters with the suggestion value
//     final suggestions = queryValue.isEmpty
//         ? recentCities
//         : recentCities.where((city) {
//             return city.toLowerCase().startsWith(queryValue);
//           }).toList();

//     return suggestions;
//   }

//   List<String> compareQueryValueWithDataList({required String queryValue}) {
//     //* Two Options
//     // Disply if only exact value availble
//     final lsitExactlyValue = cities.where((element) {
//       return element.toLowerCase() == queryValue;
//     }).toList();

//     // Disply all the values contains with query
//     // final lsitExactlyValue = cities.where((element) {
//     //   return element.toLowerCase().contains(queryValueS);
//     // }).toList();
//     //*

//     return lsitExactlyValue;
//   }

//   void compareQueryValueWithSuggestionList({required String queryValue}) {
//     final String queryValueTrimed = queryValue.toLowerCase().trim();

//     //* Disply if only exact value availble
//     final lsitExactlyValue = recentCities.where((element) {
//       return element.toLowerCase() == queryValueTrimed;
//     }).toList();

//     //* if city is not availbe in list, and query is not empy, add city in to top of the list
//     if (lsitExactlyValue.isEmpty && queryValue.isNotEmpty) {
//       recentCities.insert(0, queryValueTrimed);
//     }

//     //* if city is availbe in list, then delete existing one and add in to top of the list
//     if (lsitExactlyValue.isNotEmpty) {
//       recentCities.removeWhere(
//         (item) => item.toLowerCase() == queryValueTrimed,
//       );
//       recentCities.insert(0, queryValueTrimed);
//     }

//     //* Disply all the values contains with query
//     // final lsitExactlyValue = cities.where((element) {
//     //   return element.toLowerCase().contains(queryValueS);
//     // }).toList();
//     //*
//   }
// }

//! --------------------------- 2nd method

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
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
          stateStatus: SearchStateStatus.initial,
          suggestions: recentCities,
        )) {
    on<SearchEvent>((event, emit) async {
      //! type In Search bar Event
      if (event.eventStatus == SearchEventStatus.typedInSearchbar) {
        String queryValue = event.queryValue!.toLowerCase().trim();

        final suggestions =
            compareUserTypeLettersWithSuggestionList(queryValue: queryValue);

        emit(state.copyWith(
          stateStatus: SearchStateStatus.initial,
          suggestions: suggestions,
          queryValue: queryValue,
        ));
      }
      //! submitted Search value Evnt
      if (event.eventStatus == SearchEventStatus.submittedSearch) {
        String queryValue = event.queryValue!.toLowerCase().trim();

        emit(state.copyWith(
          stateStatus: SearchStateStatus.loading,
          queryValue: event.queryValue,
        ));

        if (queryValue.isEmpty) {
          //* if query empty, warning send to user to enter city name
          emit(state.copyWith(
            stateStatus: SearchStateStatus.failure,
            errorMsg: "Please enter a city name. Ex: London",
          ));
        } else {
          await Future.delayed(const Duration(seconds: 1));

          compareQueryValueWithSuggestionList(queryValue: queryValue);

          final lsitExactlyValue =
              compareQueryValueWithDataList(queryValue: queryValue);

          lsitExactlyValue.isNotEmpty
              ? emit(state.copyWith(
                  stateStatus: SearchStateStatus.success,
                  queryValue: queryValue,
                  results: lsitExactlyValue,
                ))
              : emit(state.copyWith(
                  stateStatus: SearchStateStatus.failure,
                  errorMsg: "City Not Found",
                ));
        }
      }
      //! clicked Suggeted value Event
      if (event.eventStatus == SearchEventStatus.clickedSuggetion) {
        String suggestionValue = event.suggestion!.toLowerCase().trim();
        emit(state.copyWith(
          stateStatus: SearchStateStatus.loading,
          queryValue: suggestionValue,
        ));

        await Future.delayed(const Duration(seconds: 1));

        compareQueryValueWithSuggestionList(
          queryValue: suggestionValue,
        );

        final lsitExactlyValue = compareQueryValueWithDataList(
          queryValue: suggestionValue,
        );

        lsitExactlyValue.isNotEmpty
            ? emit(state.copyWith(
                stateStatus: SearchStateStatus.success,
                queryValue: suggestionValue,
                results: lsitExactlyValue,
              ))
            : emit(state.copyWith(
                stateStatus: SearchStateStatus.failure,
                errorMsg: "City Not Found",
              ));
      }
      //! clicked Back Arrow Button Event
      if (event.eventStatus == SearchEventStatus.clickedBackArrowBtn) {
        emit(state.copyWith(
          stateStatus: SearchStateStatus.initial,
          suggestions: recentCities,
          queryValue: "",
        ));
      }
      //! clicked Clear Button Evnt
      if (event.eventStatus == SearchEventStatus.clickedClearBtn) {
        emit(state.copyWith(
          stateStatus: SearchStateStatus.initial,
          suggestions: recentCities,
          queryValue: "",
        ));
      }
      //! clicked Suggetion Remove Btn Evnt
      if (event.eventStatus == SearchEventStatus.clickedSuggetionRemoveBtn) {
        final suggestedValue = event.suggestion!.toLowerCase().trim();

        //* -- Why emited loading state
        //* when emit same state bloc not respondend to second state. therefor emit loading state without confuced user and useful manner
        emit(state.copyWith(
          stateStatus: SearchStateStatus.loading,
          //* if not check null then print "null" in search bar
          queryValue: event.queryValue ?? "",
        ));
        await Future.delayed(const Duration(milliseconds: 50));
        //*

        recentCities.removeWhere(
          (item) => item.toLowerCase() == suggestedValue,
        );

        developer.log(recentCities.toString(), name: 'recentCities');

        emit(state.copyWith(
          stateStatus: SearchStateStatus.initial,
          suggestions: recentCities,
          queryValue: "",
        ));
      }
    });
  }

  List<String> compareUserTypeLettersWithSuggestionList(
      {required String queryValue}) {
    // Comparing the user type letters with the suggestion value
    final suggestions = queryValue.isEmpty
        ? recentCities
        : recentCities.where((city) {
            return city.toLowerCase().startsWith(queryValue);
          }).toList();

    return suggestions;
  }

  List<String> compareQueryValueWithDataList({required String queryValue}) {
    //* Two Options
    // Disply if only exact value availble
    final lsitExactlyValue = cities.where((element) {
      return element.toLowerCase() == queryValue;
    }).toList();

    // Disply all the values contains with query
    // final lsitExactlyValue = cities.where((element) {
    //   return element.toLowerCase().contains(queryValueS);
    // }).toList();
    //*

    return lsitExactlyValue;
  }

  void compareQueryValueWithSuggestionList({required String queryValue}) {
    final String queryValueTrimed = queryValue.toLowerCase().trim();

    //* Disply if only exact value availble
    final lsitExactlyValue = recentCities.where((element) {
      return element.toLowerCase() == queryValueTrimed;
    }).toList();

    //* if city is not availbe in list, and query is not empy, add city in to top of the list
    if (lsitExactlyValue.isEmpty && queryValue.isNotEmpty) {
      recentCities.insert(0, queryValueTrimed);
    }

    //* if city is availbe in list, then delete existing one and add in to top of the list
    if (lsitExactlyValue.isNotEmpty) {
      recentCities.removeWhere(
        (item) => item.toLowerCase() == queryValueTrimed,
      );
      recentCities.insert(0, queryValueTrimed);
    }

    //* Disply all the values contains with query
    // final lsitExactlyValue = cities.where((element) {
    //   return element.toLowerCase().contains(queryValueS);
    // }).toList();
    //*
  }
}
