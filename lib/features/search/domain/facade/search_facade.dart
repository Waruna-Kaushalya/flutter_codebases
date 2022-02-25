abstract class SearchFacade {
  Future<List<String>> compareUserTypeLettersWithSuggestionList(
      {required String queryValue});
  Future<List<String>> compareQueryWithDataList({required String queryValue});
  Future<void> updateSuggestionsList({required String queryValue});
  Future<void> searchSuggetionRemove({required String suggestedValue});
}
