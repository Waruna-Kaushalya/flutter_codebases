import 'package:flutter_codebase/features/search/domain/facade/search_facade.dart';

import '../api/demo_cities.dart';
import '../local/recent_cities.dart';

class SearchRepository implements SearchFacade {
  @override
  Future<List<String>> compareUserTypeLettersWithSuggestionList(
      {required String queryValue}) async {
    final suggestions = queryValue.isEmpty
        ? recentCities
        : recentCities.where((city) {
            return city.totrimLower().startsWith(queryValue);
          }).toList();

    return suggestions;
  }

  @override
  Future<List<String>> compareQueryWithDataList(
      {required String queryValue}) async {
    //* Two Options
    // Disply if only exact value availble
    final exactValueSelected = cities.where((element) {
      return element.totrimLower() == queryValue;
    }).toList();

    // Disply all the values contains with query
    // final valuesSelected = cities.where((element) {
    //   return element.toLowerCase().contains(queryValue);
    // }).toList();
    //*

    return exactValueSelected;
  }

  @override
  Future<void> searchSuggetionRemove({required String suggestedValue}) async {
    recentCities.removeWhere(
      (item) => item.toLowerCase() == suggestedValue,
    );
  }

  @override
  Future<void> updateSuggestionsList({required String queryValue}) async {
    final String queryValueTrimed = queryValue.totrimLower();

    //* check value availble
    final exactValueSelected = recentCities.where((element) {
      return element.totrimLower() == queryValueTrimed;
    }).toList();

    //* if city is not availbe in list, and query is not empy, add city in to top of the list
    if (exactValueSelected.isEmpty && queryValue.isNotEmpty) {
      recentCities.insert(0, queryValueTrimed);
    }

    //* if city is availbe in list, then delete existing one and add in to top of the list
    if (exactValueSelected.isNotEmpty) {
      recentCities.removeWhere(
        (item) => item.toLowerCase() == queryValueTrimed,
      );
      recentCities.insert(0, queryValueTrimed);
    }
  }
}

/// [extension] for convert celcious to kelvin and kelvin to celcious
extension on String {
  String toTrimUpper() => (trim().toUpperCase());
  String totrimLower() => (trim().toLowerCase());
}
