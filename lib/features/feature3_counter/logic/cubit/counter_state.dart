part of 'counter_cubit.dart';

@freezed
class CounterState with _$CounterState {
  factory CounterState({
    //? required parameters
    required int counterValue,
    required bool wasIncremented,
  }) = _CounterState;

  //? Jason Serialization with copyWith
  //? Automatically check object equlity
  factory CounterState.fromJson(Map<String, dynamic> json) =>
      _$CounterStateFromJson(json);
}
