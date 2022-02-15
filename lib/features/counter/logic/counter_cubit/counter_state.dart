part of 'counter_cubit.dart';

@freezed
class CounterCubitState with _$CounterCubitState {
  factory CounterCubitState({
    //? required parameters
    required int counterValue,
    required bool wasIncremented,
  }) = _CounterCubitState;

  //? Jason Serialization with copyWith
  //? Automatically check object equlity
  factory CounterCubitState.fromJson(Map<String, dynamic> json) =>
      _$CounterCubitStateFromJson(json);
}
