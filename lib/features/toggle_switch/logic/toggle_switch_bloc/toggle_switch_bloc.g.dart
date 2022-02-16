// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toggle_switch_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ToggleswitchState _$$_ToggleswitchStateFromJson(Map<String, dynamic> json) =>
    _$_ToggleswitchState(
      stateStatus: $enumDecodeNullable(
          _$ToggleSwitchStateStatusEnumMap, json['stateStatus']),
      appNotification: json['appNotification'] as bool,
      emailNotification: json['emailNotification'] as bool,
    );

Map<String, dynamic> _$$_ToggleswitchStateToJson(
        _$_ToggleswitchState instance) =>
    <String, dynamic>{
      'stateStatus': _$ToggleSwitchStateStatusEnumMap[instance.stateStatus],
      'appNotification': instance.appNotification,
      'emailNotification': instance.emailNotification,
    };

const _$ToggleSwitchStateStatusEnumMap = {
  ToggleSwitchStateStatus.initial: 'initial',
  ToggleSwitchStateStatus.loading: 'loading',
  ToggleSwitchStateStatus.success: 'success',
  ToggleSwitchStateStatus.failure: 'failure',
};
