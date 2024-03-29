// //! ----------- 4th method ---------- 1st method

// // //! -----------------

// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';

// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'dart:developer' as developer;

// import '../../data/data_providers/data_providers.dart';

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
//     on<SearchQueryTyped>(_onSuggetionsDisplayed);
//     on<SearchQuerySubmitted>(_onSearchResultDisplayed);
//     on<SearchSuggetionPressed>(_onSuggetionResultDisplayed);
//     on<SearchSuggetionRemoved>(_onSuggetionRemoved);
//     on<SearchClearBtnPressed>(_onSearchBarCleared);
//     on<SearchBackArrowBtnPressed>(_onPopupToHome);
//   }

//   Future<void> _onSuggetionsDisplayed(
//     SearchQueryTyped event,
//     Emitter<SearchState> emit,
//   ) async {
//     String queryValue = event.queryValue.totrimLower();

//     final suggestions =
//         compareUserTypeLettersWithSuggestionList(queryValue: queryValue);

//     // final suggestions = queryValue.isEmpty
//     //     ? recentCities
//     //     : recentCities.where((city) {
//     //         return city.toLowerCase().startsWith(queryValue);
//     //       }).toList();

//     emit(state.copyWith(
//       stateStatus: SearchStateStatus.initial,
//       suggestions: suggestions,
//       queryValue: queryValue,
//     ));
//   }

//   Future<void> _onSearchResultDisplayed(
//     SearchQuerySubmitted event,
//     Emitter<SearchState> emit,
//   ) async {
//     String queryValue = event.queryValue.totrimLower();

//     emit(state.copyWith(
//         stateStatus: SearchStateStatus.loading, queryValue: event.queryValue));

//     //* if query empty, warning send to user to enter city name
//     if (queryValue.isEmpty) {
//       emit(state.copyWith(
//           stateStatus: SearchStateStatus.failure,
//           errorMsg: "Please enter a city name. Ex: London"));
//     } else {
//       await Future.delayed(const Duration(seconds: 1));

//       updateSuggestionsList(queryValue: queryValue);

//       final lsitExactlyValue = compareQueryWithDataList(queryValue: queryValue);

//       lsitExactlyValue.isNotEmpty
//           ? emit(state.copyWith(
//               stateStatus: SearchStateStatus.success,
//               queryValue: queryValue,
//               results: lsitExactlyValue))
//           : emit(state.copyWith(
//               stateStatus: SearchStateStatus.failure,
//               errorMsg: "City Not Found"));
//     }
//   }

//   Future<void> _onSuggetionResultDisplayed(
//     SearchSuggetionPressed event,
//     Emitter<SearchState> emit,
//   ) async {
//     String suggestionValue = event.suggestion.totrimLower();
//     emit(state.copyWith(
//       stateStatus: SearchStateStatus.loading,
//       queryValue: suggestionValue,
//     ));

//     await Future.delayed(const Duration(seconds: 1));

//     updateSuggestionsList(
//       queryValue: suggestionValue,
//     );

//     final lsitExactlyValue = compareQueryWithDataList(
//       queryValue: suggestionValue,
//     );

//     lsitExactlyValue.isNotEmpty
//         ? emit(state.copyWith(
//             stateStatus: SearchStateStatus.success,
//             queryValue: suggestionValue,
//             results: lsitExactlyValue,
//           ))
//         : emit(state.copyWith(
//             stateStatus: SearchStateStatus.failure,
//             errorMsg: "City Not Found",
//           ));
//   }

//   Future<void> _onSuggetionRemoved(
//     SearchSuggetionRemoved event,
//     Emitter<SearchState> emit,
//   ) async {
//     final suggestedValue = event.suggestion.totrimLower();
//     String queryValue = event.queryValue.totrimLower();

//     //* -- Why emited loading state
//     //* when emit same state bloc not respondend to second state. therefor emit loading state without confuced user and useful manner
//     emit(state.copyWith(
//       stateStatus: SearchStateStatus.loading,
//       //* if not check null then print "null" in search bar
//       queryValue: queryValue,
//     ));
//     await Future.delayed(const Duration(milliseconds: 50));
//     //*

//     recentCities.removeWhere(
//       (item) => item.toLowerCase() == suggestedValue,
//     );

//     developer.log(recentCities.toString(), name: 'recentCities');

//     emit(state.copyWith(
//       stateStatus: SearchStateStatus.initial,
//       suggestions: recentCities,
//       queryValue: "",
//     ));
//   }

//   Future<void> _onSearchBarCleared(
//     SearchClearBtnPressed event,
//     Emitter<SearchState> emit,
//   ) async {
//     emit(state.copyWith(
//       stateStatus: SearchStateStatus.initial,
//       suggestions: recentCities,
//       queryValue: "",
//     ));
//   }

//   Future<void> _onPopupToHome(
//     SearchBackArrowBtnPressed event,
//     Emitter<SearchState> emit,
//   ) async {
//     emit(state.copyWith(
//       stateStatus: SearchStateStatus.initial,
//       suggestions: recentCities,
//       queryValue: "",
//     ));
//   }

//   List<String> compareUserTypeLettersWithSuggestionList(
//       {required String queryValue}) {
//     // Comparing the user type letters with the suggestion value
//     final suggestions = queryValue.isEmpty
//         ? recentCities
//         : recentCities.where((city) {
//             return city.totrimLower().startsWith(queryValue);
//           }).toList();

//     return suggestions;
//   }

//   List<String> compareQueryWithDataList({required String queryValue}) {
//     //* Two Options
//     // Disply if only exact value availble
//     final exactValueSelected = cities.where((element) {
//       return element.totrimLower() == queryValue;
//     }).toList();

//     // Disply all the values contains with query
//     // final valuesSelected = cities.where((element) {
//     //   return element.toLowerCase().contains(queryValue);
//     // }).toList();
//     //*

//     return exactValueSelected;
//   }

//   void updateSuggestionsList({required String queryValue}) {
//     final String queryValueTrimed = queryValue.totrimLower();

//     //* check value availble
//     final exactValueSelected = recentCities.where((element) {
//       return element.totrimLower() == queryValueTrimed;
//     }).toList();

//     //* if city is not availbe in list, and query is not empy, add city in to top of the list
//     if (exactValueSelected.isEmpty && queryValue.isNotEmpty) {
//       recentCities.insert(0, queryValueTrimed);
//     }

//     //* if city is availbe in list, then delete existing one and add in to top of the list
//     if (exactValueSelected.isNotEmpty) {
//       recentCities.removeWhere(
//         (item) => item.toLowerCase() == queryValueTrimed,
//       );
//       recentCities.insert(0, queryValueTrimed);
//     }
//   }
// }

// /// [extension] for convert celcious to kelvin and kelvin to celcious
// extension on String {
//   String toTrimUpper() => (trim().toUpperCase());
//   String totrimLower() => (trim().toLowerCase());
// }

// //! ----------- 5th method ---------- 1st method

// import 'dart:developer' as developer;

// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// import '../../Infrastructure/api/demo_cities.dart';
// import '../../Infrastructure/local/recent_cities.dart';

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
//     on<SearchEvent>(
//       (event, emit) async {
//         await event.map(
//           searchQueryTyped: (value) {
//             // _onSuggetionsDisplayed;

//             String queryValue = value.queryValue.totrimLower();

//             final suggestions = compareUserTypeLettersWithSuggestionList(
//                 queryValue: queryValue);

//             // final suggestions = queryValue.isEmpty
//             //     ? recentCities
//             //     : recentCities.where((city) {
//             //         return city.toLowerCase().startsWith(queryValue);
//             //       }).toList();

//             emit(state.copyWith(
//               stateStatus: SearchStateStatus.initial,
//               suggestions: suggestions,
//               queryValue: queryValue,
//             ));
//           },
//           searchQuerySubmitted: (value) async {
//             // _onSearchResultDisplayed;

//             String queryValue = value.queryValue.totrimLower();

//             emit(state.copyWith(
//                 stateStatus: SearchStateStatus.loading,
//                 queryValue: value.queryValue));

//             //* if query empty, warning send to user to enter city name
//             if (queryValue.isEmpty) {
//               emit(state.copyWith(
//                   stateStatus: SearchStateStatus.failure,
//                   errorMsg: "Please enter a city name. Ex: London"));
//             } else {
//               await Future.delayed(const Duration(seconds: 1));

//               updateSuggestionsList(queryValue: queryValue);

//               final lsitExactlyValue =
//                   compareQueryWithDataList(queryValue: queryValue);

//               lsitExactlyValue.isNotEmpty
//                   ? emit(state.copyWith(
//                       stateStatus: SearchStateStatus.success,
//                       queryValue: queryValue,
//                       results: lsitExactlyValue))
//                   : emit(state.copyWith(
//                       stateStatus: SearchStateStatus.failure,
//                       errorMsg: "City Not Found"));
//             }
//           },
//           searchSuggetionPressed: (value) async {
//             // _onSuggetionResultDisplayed;

//             String suggestionValue = value.suggestion.totrimLower();
//             emit(state.copyWith(
//               stateStatus: SearchStateStatus.loading,
//               queryValue: suggestionValue,
//             ));

//             await Future.delayed(const Duration(seconds: 1));

//             updateSuggestionsList(
//               queryValue: suggestionValue,
//             );

//             final lsitExactlyValue = compareQueryWithDataList(
//               queryValue: suggestionValue,
//             );

//             lsitExactlyValue.isNotEmpty
//                 ? emit(state.copyWith(
//                     stateStatus: SearchStateStatus.success,
//                     queryValue: suggestionValue,
//                     results: lsitExactlyValue,
//                   ))
//                 : emit(state.copyWith(
//                     stateStatus: SearchStateStatus.failure,
//                     errorMsg: "City Not Found",
//                   ));
//           },
//           searchSuggetionRemoved: (value) async {
//             // _onSuggetionRemoved;

//             final suggestedValue = value.suggestion.totrimLower();
//             String queryValue = value.queryValue.totrimLower();

//             //* -- Why emited loading state
//             //* when emit same state bloc not respondend to second state. therefor emit loading state without confuced user and useful manner
//             emit(state.copyWith(
//               stateStatus: SearchStateStatus.loading,
//               //* if not check null then print "null" in search bar
//               queryValue: queryValue,
//             ));
//             await Future.delayed(const Duration(milliseconds: 50));
//             //*

//             searchSuggetionRemove(suggestedValue: suggestedValue);

//             developer.log(recentCities.toString(), name: 'recentCities');

//             emit(state.copyWith(
//               stateStatus: SearchStateStatus.initial,
//               suggestions: recentCities,
//               queryValue: "",
//             ));
//           },
//           searchClearBtnPressed: (value) {
//             // _onSearchBarCleared;
//             emit(state.copyWith(
//               stateStatus: SearchStateStatus.initial,
//               suggestions: recentCities,
//               queryValue: "",
//             ));
//           },
//           searchBackArrowBtnPressed: (value) {
//             // _onPopupToHome;
//             emit(state.copyWith(
//               stateStatus: SearchStateStatus.initial,
//               suggestions: recentCities,
//               queryValue: "",
//             ));
//           },
//         );
//       },
//     );
//   }

//   List<String> compareUserTypeLettersWithSuggestionList(
//       {required String queryValue}) {
//     // Comparing the user type letters with the suggestion value
//     final suggestions = queryValue.isEmpty
//         ? recentCities
//         : recentCities.where((city) {
//             return city.totrimLower().startsWith(queryValue);
//           }).toList();

//     return suggestions;
//   }

//   List<String> compareQueryWithDataList({required String queryValue}) {
//     //* Two Options
//     // Disply if only exact value availble
//     final exactValueSelected = cities.where((element) {
//       return element.totrimLower() == queryValue;
//     }).toList();

//     // Disply all the values contains with query
//     // final valuesSelected = cities.where((element) {
//     //   return element.toLowerCase().contains(queryValue);
//     // }).toList();
//     //*

//     return exactValueSelected;
//   }

//   void searchSuggetionRemove({required String suggestedValue}) {
//     recentCities.removeWhere(
//       (item) => item.toLowerCase() == suggestedValue,
//     );
//   }

//   void updateSuggestionsList({required String queryValue}) {
//     final String queryValueTrimed = queryValue.totrimLower();

//     //* check value availble
//     final exactValueSelected = recentCities.where((element) {
//       return element.totrimLower() == queryValueTrimed;
//     }).toList();

//     //* if city is not availbe in list, and query is not empy, add city in to top of the list
//     if (exactValueSelected.isEmpty && queryValue.isNotEmpty) {
//       recentCities.insert(0, queryValueTrimed);
//     }

//     //* if city is availbe in list, then delete existing one and add in to top of the list
//     if (exactValueSelected.isNotEmpty) {
//       recentCities.removeWhere(
//         (item) => item.toLowerCase() == queryValueTrimed,
//       );
//       recentCities.insert(0, queryValueTrimed);
//     }
//   }
//   //   //! 8888
// }

// /// [extension] for convert celcious to kelvin and kelvin to celcious
// extension on String {
//   String toTrimUpper() => (trim().toUpperCase());
//   String totrimLower() => (trim().toLowerCase());
// }

//! ----------- 6th method ---------- 1st method

import 'dart:developer' as developer;

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_codebase/features/search/domain/facade/search_facade.dart';

import '../../Infrastructure/local/recent_cities.dart';

part 'search_bloc.freezed.dart';
part 'search_bloc.g.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchFacade searchFacade;
  SearchBloc(
    this.searchFacade,
  ) : super(SearchState(
          queryValue: "",
          stateStatus: SearchStateStatus.initial,
          suggestions: recentCities,
        )) {
    on<SearchEvent>(
      (event, emit) async {
        await event.map(
          searchQueryTyped: (value) async {
            String queryValue = value.queryValue.totrimLower();

            final suggestions =
                await searchFacade.compareUserTypeLettersWithSuggestionList(
              queryValue: queryValue,
            );

            emit(state.copyWith(
              stateStatus: SearchStateStatus.initial,
              suggestions: suggestions,
              queryValue: queryValue,
            ));
          },
          searchQuerySubmitted: (value) async {
            String queryValue = value.queryValue.totrimLower();

            emit(state.copyWith(
              stateStatus: SearchStateStatus.loading,
              queryValue: value.queryValue,
            ));

            /// if query empty, warning send to user to enter city name
            if (queryValue.isEmpty) {
              emit(state.copyWith(
                stateStatus: SearchStateStatus.failure,
                errorMsg: "Please enter a city name. Ex: London",
              ));
            } else {
              await Future.delayed(const Duration(seconds: 1));

              await searchFacade.updateSuggestionsList(
                queryValue: queryValue,
              );

              final lsitExactlyValue =
                  await searchFacade.compareQueryWithDataList(
                queryValue: queryValue,
              );

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
          },
          searchSuggetionPressed: (value) async {
            String suggestionValue = value.suggestion.totrimLower();
            emit(state.copyWith(
              stateStatus: SearchStateStatus.loading,
              queryValue: suggestionValue,
            ));

            await Future.delayed(const Duration(seconds: 1));

            await searchFacade.updateSuggestionsList(
              queryValue: suggestionValue,
            );

            final lsitExactlyValue =
                await searchFacade.compareQueryWithDataList(
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
          },
          searchSuggetionRemoved: (value) async {
            final suggestedValue = value.suggestion.totrimLower();
            String queryValue = value.queryValue.totrimLower();

            //* -- Why emited loading state
            //* when emit same state bloc not respondend to second state. therefor emit loading state without confuced user and useful manner
            emit(state.copyWith(
              stateStatus: SearchStateStatus.loading,
              //* if not check null then print "null" in search bar
              queryValue: queryValue,
            ));
            await Future.delayed(const Duration(milliseconds: 50));
            //*

            await searchFacade.searchSuggetionRemove(
              suggestedValue: suggestedValue,
            );

            developer.log(recentCities.toString(), name: 'recentCities');

            emit(state.copyWith(
              stateStatus: SearchStateStatus.initial,
              suggestions: recentCities,
              queryValue: "",
            ));
          },
          searchClearBtnPressed: (value) {
            // _onSearchBarCleared;
            emit(state.copyWith(
              stateStatus: SearchStateStatus.initial,
              suggestions: recentCities,
              queryValue: "",
            ));
          },
          searchBackArrowBtnPressed: (value) {
            // _onPopupToHome;
            emit(state.copyWith(
              stateStatus: SearchStateStatus.initial,
              suggestions: recentCities,
              queryValue: "",
            ));
          },
        );
      },
    );
  }
}

/// [extension] for convert celcious to kelvin and kelvin to celcious
extension on String {
  String toTrimUpper() => (trim().toUpperCase());
  String totrimLower() => (trim().toLowerCase());
}
