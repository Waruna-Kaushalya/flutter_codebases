// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchEvent _$SearchEventFromJson(Map<String, dynamic> json) => SearchEvent(
      eventStatus: $enumDecode(_$SearchEventStatusEnumMap, json['eventStatus']),
      suggestions: (json['suggestions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      suggestion: json['suggestion'] as String?,
      queryValue: json['queryValue'] as String?,
    );

Map<String, dynamic> _$SearchEventToJson(SearchEvent instance) =>
    <String, dynamic>{
      'eventStatus': _$SearchEventStatusEnumMap[instance.eventStatus],
      'suggestions': instance.suggestions,
      'suggestion': instance.suggestion,
      'queryValue': instance.queryValue,
    };

const _$SearchEventStatusEnumMap = {
  SearchEventStatus.typeInTheSearchbar: 'typeInTheSearchbar',
  SearchEventStatus.suggestedCityClicked: 'suggestedCityClicked',
  SearchEventStatus.onSubmitted: 'onSubmitted',
  SearchEventStatus.clickedClearIconButton: 'clickedClearIconButton',
  SearchEventStatus.clickedBackArrowButton: 'clickedBackArrowButton',
  SearchEventStatus.removeSuggetion: 'removeSuggetion',
};

SearchState _$SearchStateFromJson(Map<String, dynamic> json) => SearchState(
      stateStatus: $enumDecodeNullable(
              _$SearchStateStatusEnumMap, json['stateStatus']) ??
          SearchStateStatus.searchInitial,
      suggestions: (json['suggestions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      results:
          (json['results'] as List<dynamic>?)?.map((e) => e as String).toList(),
      queryValue: json['queryValue'] as String?,
    );

Map<String, dynamic> _$SearchStateToJson(SearchState instance) =>
    <String, dynamic>{
      'stateStatus': _$SearchStateStatusEnumMap[instance.stateStatus],
      'suggestions': instance.suggestions,
      'results': instance.results,
      'queryValue': instance.queryValue,
    };

const _$SearchStateStatusEnumMap = {
  SearchStateStatus.searchInitial: 'searchInitial',
  SearchStateStatus.resultLoading: 'resultLoading',
  SearchStateStatus.showResult: 'showResult',
  SearchStateStatus.cityNotFound: 'cityNotFound',
  SearchStateStatus.searchEnd: 'searchEnd',
};
