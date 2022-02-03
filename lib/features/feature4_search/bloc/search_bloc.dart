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
            status: SearchStateStatus.searchInitial,
            suggestions: cities)) {
    on<SearchEvent>((event, emit) async {
      if (event.status == SearchEventStatus.typeInTheSearchbar) {
        final queryValue = event.queryValue!.trim();
        final suggestions = queryValue.isEmpty
            ? cities
            : cities.where(
                (city) {
                  final cityLower = city.toLowerCase();
                  final queryLower = queryValue.toLowerCase();
                  return cityLower.startsWith(queryLower);
                },
              ).toList();

        emit(state.copyWith(
            status: SearchStateStatus.suggestionsDisplay,
            suggestions: suggestions,
            queryValue: queryValue));

        developer.log(suggestions.toString(), name: 'suggestions');
      } else if (event.status == SearchEventStatus.onSubmitted) {
        emit(state.copyWith(status: SearchStateStatus.resultLoading));

        await Future.delayed(const Duration(seconds: 1));

        String queryValueS = event.queryValue!.toLowerCase().trim();

        //* Two Options
        //? Disply if only exact value availble
        final lsitExactlyValue = cities.where((element) {
          return element.toLowerCase() == queryValueS;
        }).toList();

        //? Disply all the values contains with query
        // final lsitExactlyValue = cities.where((element) {
        //   return element.toLowerCase().contains(queryValueS);
        // }).toList();
        //*

        //* Two Options
        lsitExactlyValue.isNotEmpty
            ? emit(state.copyWith(
                status: SearchStateStatus.showResult,
                queryValue: queryValueS,
                results: lsitExactlyValue,
              ))
            : emit(
                state.copyWith(
                  status: SearchStateStatus.cityNotFound,
                ),
              );

        // if (lsitExactlyValue.isNotEmpty) {
        //   emit(state.copyWith(
        //     status: SearchStateStatus.showResult,
        //     queryValue: queryValueS,
        //     results: lsitExactlyValue,
        //   ));
        // }

        // if (lsitExactlyValue.isEmpty) {
        //   emit(state.copyWith(status: SearchStateStatus.cityNotFound));
        // }
        //*

      }
    });
  }
}
