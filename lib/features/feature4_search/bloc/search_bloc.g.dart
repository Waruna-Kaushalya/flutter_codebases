// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchEvent _$$_SearchEventFromJson(Map<String, dynamic> json) =>
    _$_SearchEvent(
      eventStatus: $enumDecode(_$SearchEventStatusEnumMap, json['eventStatus']),
      suggestions: (json['suggestions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      suggestion: json['suggestion'] as String?,
      queryValue: json['queryValue'] as String?,
    );

Map<String, dynamic> _$$_SearchEventToJson(_$_SearchEvent instance) =>
    <String, dynamic>{
      'eventStatus': _$SearchEventStatusEnumMap[instance.eventStatus],
      'suggestions': instance.suggestions,
      'suggestion': instance.suggestion,
      'queryValue': instance.queryValue,
    };

const _$SearchEventStatusEnumMap = {
  SearchEventStatus.typeInSearchbarEvnt: 'typeInSearchbarEvnt',
  SearchEventStatus.clickedSuggetionEvnt: 'clickedSuggetionEvnt',
  SearchEventStatus.submittedSearchEvnt: 'submittedSearchEvnt',
  SearchEventStatus.clickedClearBtnEvnt: 'clickedClearBtnEvnt',
  SearchEventStatus.clickedBackArrowBtnEvnt: 'clickedBackArrowBtnEvnt',
  SearchEventStatus.clickedSuggetionRemoveBtnEvnt:
      'clickedSuggetionRemoveBtnEvnt',
};

_$_SearchState _$$_SearchStateFromJson(Map<String, dynamic> json) =>
    _$_SearchState(
      stateStatus: $enumDecode(_$SearchStateStatusEnumMap, json['stateStatus']),
      suggestions: (json['suggestions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      results:
          (json['results'] as List<dynamic>?)?.map((e) => e as String).toList(),
      queryValue: json['queryValue'] as String?,
    );

Map<String, dynamic> _$$_SearchStateToJson(_$_SearchState instance) =>
    <String, dynamic>{
      'stateStatus': _$SearchStateStatusEnumMap[instance.stateStatus],
      'suggestions': instance.suggestions,
      'results': instance.results,
      'queryValue': instance.queryValue,
    };

const _$SearchStateStatusEnumMap = {
  SearchStateStatus.searchInitialState: 'searchInitialState',
  SearchStateStatus.searchResultLoadingState: 'searchResultLoadingState',
  SearchStateStatus.searchResultShowState: 'searchResultShowState',
  SearchStateStatus.searchNotFoundState: 'searchNotFoundState',
};
