// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchEvent _$$_SearchEventFromJson(Map<String, dynamic> json) =>
    _$_SearchEvent(
      status: $enumDecode(_$SearchEventStatusEnumMap, json['status']),
      suggestions: (json['suggestions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      queryValue: json['queryValue'] as String?,
    );

Map<String, dynamic> _$$_SearchEventToJson(_$_SearchEvent instance) =>
    <String, dynamic>{
      'status': _$SearchEventStatusEnumMap[instance.status],
      'suggestions': instance.suggestions,
      'queryValue': instance.queryValue,
    };

const _$SearchEventStatusEnumMap = {
  SearchEventStatus.typeInTheSearchbar: 'typeInTheSearchbar',
  SearchEventStatus.suggestedCityClicked: 'suggestedCityClicked',
  SearchEventStatus.onSubmitted: 'onSubmitted',
  SearchEventStatus.clickedClearIconButton: 'clickedClearIconButton',
  SearchEventStatus.clickedBackArrowButton: 'clickedBackArrowButton',
};

_$_SearchState _$$_SearchStateFromJson(Map<String, dynamic> json) =>
    _$_SearchState(
      status: $enumDecodeNullable(_$SearchStateStatusEnumMap, json['status']) ??
          SearchStateStatus.searchInitial,
      suggestions: (json['suggestions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      results:
          (json['results'] as List<dynamic>?)?.map((e) => e as String).toList(),
      queryValue: json['queryValue'] as String?,
    );

Map<String, dynamic> _$$_SearchStateToJson(_$_SearchState instance) =>
    <String, dynamic>{
      'status': _$SearchStateStatusEnumMap[instance.status],
      'suggestions': instance.suggestions,
      'results': instance.results,
      'queryValue': instance.queryValue,
    };

const _$SearchStateStatusEnumMap = {
  SearchStateStatus.searchInitial: 'searchInitial',
  SearchStateStatus.suggestionsDisplay: 'suggestionsDisplay',
  SearchStateStatus.resultLoading: 'resultLoading',
  SearchStateStatus.showResult: 'showResult',
  SearchStateStatus.cityNotFound: 'cityNotFound',
  SearchStateStatus.searchEnd: 'searchEnd',
};
