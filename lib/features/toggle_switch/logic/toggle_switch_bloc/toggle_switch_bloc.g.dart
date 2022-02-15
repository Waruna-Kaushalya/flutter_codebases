// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toggle_switch_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ToggleswitchState _$$_ToggleswitchStateFromJson(Map<String, dynamic> json) =>
    _$_ToggleswitchState(
      stateStatus:
          $enumDecodeNullable(_$WeatherStateStatusEnumMap, json['stateStatus']),
      appNotification: json['appNotification'] as bool,
      emailNotification: json['emailNotification'] as bool,
    );

Map<String, dynamic> _$$_ToggleswitchStateToJson(
        _$_ToggleswitchState instance) =>
    <String, dynamic>{
      'stateStatus': _$WeatherStateStatusEnumMap[instance.stateStatus],
      'appNotification': instance.appNotification,
      'emailNotification': instance.emailNotification,
    };

const _$WeatherStateStatusEnumMap = {
  WeatherStateStatus.initial: 'initial',
  WeatherStateStatus.loading: 'loading',
  WeatherStateStatus.success: 'success',
  WeatherStateStatus.failure: 'failure',
};
