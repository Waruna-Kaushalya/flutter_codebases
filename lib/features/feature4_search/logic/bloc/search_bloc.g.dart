// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchState _$$_SearchStateFromJson(Map<String, dynamic> json) =>
    _$_SearchState(
      stateStatus: $enumDecode(_$SearchStateStatusEnumMap, json['stateStatus']),
      suggestions: (json['suggestions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      results:
          (json['results'] as List<dynamic>?)?.map((e) => e as String).toList(),
      queryValue: json['queryValue'] as String?,
      errorMsg: json['errorMsg'] as String?,
    );

Map<String, dynamic> _$$_SearchStateToJson(_$_SearchState instance) =>
    <String, dynamic>{
      'stateStatus': _$SearchStateStatusEnumMap[instance.stateStatus],
      'suggestions': instance.suggestions,
      'results': instance.results,
      'queryValue': instance.queryValue,
      'errorMsg': instance.errorMsg,
    };

const _$SearchStateStatusEnumMap = {
  SearchStateStatus.initial: 'initial',
  SearchStateStatus.loading: 'loading',
  SearchStateStatus.success: 'success',
  SearchStateStatus.failure: 'failure',
};
