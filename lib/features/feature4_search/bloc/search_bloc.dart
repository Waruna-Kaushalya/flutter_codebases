import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
// import 'package:json_serializable/json_serializable.dart';
import 'package:flutter_codebase/features/feature4_search/data/cities.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:developer' as developer;

part 'search_event.dart';
part 'search_state.dart';
// part 'search_bloc.freezed.dart';
part 'search_bloc.g.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  List<String> cityList = cities;
  SearchBloc()
      : super(
          SearchState(
            queryValue: "",
            stateStatus: SearchStateStatus.searchInitial,
            suggestions: cities,
          ),
        ) {
    on<SearchEvent>((event, emit) async {
      if (event.eventStatus == SearchEventStatus.typeInTheSearchbar) {
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
            stateStatus: SearchStateStatus.searchInitial,
            suggestions: suggestions,
            queryValue: queryValue));

        developer.log(suggestions.toString(), name: 'suggestions');
      } else if (event.eventStatus == SearchEventStatus.onSubmitted) {
        emit(state.copyWith(
          stateStatus: SearchStateStatus.resultLoading,
          queryValue: event.queryValue,
        ));

        await Future.delayed(const Duration(seconds: 1));

        String queryValueS = event.queryValue!.toLowerCase().trim();

        final lsitExactlyValue = compraeCity(queryValueS);

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
            ? emit(state.copyWith(
                stateStatus: SearchStateStatus.showResult,
                queryValue: queryValueS,
                results: lsitExactlyValue,
              ))
            : emit(
                state.copyWith(
                  stateStatus: SearchStateStatus.cityNotFound,
                ),
              );
      } else if (event.eventStatus == SearchEventStatus.suggestedCityClicked) {
        emit(state.copyWith(
          stateStatus: SearchStateStatus.resultLoading,
          queryValue: event.queryValue,
        ));

        await Future.delayed(const Duration(seconds: 1));

        String queryValueS = event.queryValue!.toLowerCase().trim();

        final lsitExactlyValue = compraeCity(queryValueS);

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
            ? emit(state.copyWith(
                stateStatus: SearchStateStatus.showResult,
                queryValue: queryValueS,
                results: lsitExactlyValue,
              ))
            : emit(
                state.copyWith(
                  stateStatus: SearchStateStatus.cityNotFound,
                ),
              );
      } else if (event.eventStatus ==
          SearchEventStatus.clickedBackArrowButton) {
        emit(state.copyWith(
            stateStatus: SearchStateStatus.searchInitial,
            suggestions: cities,
            queryValue: ""));
      } else if (event.eventStatus ==
          SearchEventStatus.clickedClearIconButton) {
        emit(state.copyWith(
            stateStatus: SearchStateStatus.searchInitial,
            suggestions: cities,
            queryValue: ""));
      } else if (event.eventStatus == SearchEventStatus.removeSuggetion) {
        final value = event.suggestion!.toLowerCase().trim();
        emit(state.copyWith(
          stateStatus: SearchStateStatus.resultLoading,
          queryValue: event.queryValue,
        ));

        await Future.delayed(const Duration(milliseconds: 500));
        cityList.removeWhere((item) => item.toLowerCase() == value);

        developer.log(cityList.toString(), name: 'cityList');

        emit(state.copyWith(
            stateStatus: SearchStateStatus.searchInitial,
            suggestions: cityList,
            queryValue: ""));
      }
    });
  }

  List<String> compraeCity(String queryValueS) {
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

    return lsitExactlyValue;
  }
}
