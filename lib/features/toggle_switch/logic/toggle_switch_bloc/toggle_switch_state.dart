part of 'toggle_switch_bloc.dart';

enum ToggleSwitchStateStatus { initial, loading, success, failure }

@freezed
class ToggleswitchState with _$ToggleswitchState {
  factory ToggleswitchState({
    ToggleSwitchStateStatus? stateStatus,
    //? required parameters
    required bool appNotification,
    required bool emailNotification,
  }) = _ToggleswitchState;

  //? Jason Serialization with copyWith
  //? Automatically check object equlity
  factory ToggleswitchState.fromJson(Map<String, dynamic> json) =>
      _$ToggleswitchStateFromJson(json);
}
