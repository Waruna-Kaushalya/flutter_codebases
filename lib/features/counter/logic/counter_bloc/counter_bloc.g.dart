// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CounterState _$$_CounterStateFromJson(Map<String, dynamic> json) =>
    _$_CounterState(
      counterValue: json['counterValue'] as int,
      wasIncremented: json['wasIncremented'] as bool,
    );

Map<String, dynamic> _$$_CounterStateToJson(_$_CounterState instance) =>
    <String, dynamic>{
      'counterValue': instance.counterValue,
      'wasIncremented': instance.wasIncremented,
    };
