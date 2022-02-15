//! without freezed package
// part of 'toggleswitch_cubit.dart';

// class ToggleswitchState extends Equatable {
//   final bool appNotification;
//   final bool emailNotification;

//   const ToggleswitchState({
//     required this.appNotification,
//     required this.emailNotification,
//   });

//   @override
//   List<Object?> get props => [appNotification, emailNotification];

//   @override
//   String toString() =>
//       'ToggleSwitchButton(appNotification: $appNotification, emailNotification: $emailNotification)';

//   ToggleswitchState copyWith({
//     bool? appNotification,
//     bool? emailNotification,
//   }) {
//     return ToggleswitchState(
//       appNotification: appNotification ?? this.appNotification,
//       emailNotification: emailNotification ?? this.emailNotification,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'appNotification': appNotification,
//       'emailNotification': emailNotification,
//     };
//   }

//   factory ToggleswitchState.fromMap(Map<String, dynamic> map) {
//     return ToggleswitchState(
//       appNotification: map['appNotification'] ?? false,
//       emailNotification: map['emailNotification'] ?? false,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory ToggleswitchState.fromJson(String source) =>
//       ToggleswitchState.fromMap(json.decode(source));
// }

//! with freezed package
part of 'toggleswitch_cubit.dart';

@freezed
class ToggleswitchState with _$ToggleswitchState {
  factory ToggleswitchState({
    //? required parameters
    required bool appNotification,
    required bool emailNotification,
  }) = _ToggleswitchState;

  //? Jason Serialization with copyWith
  //? Automatically check object equlity
  factory ToggleswitchState.fromJson(Map<String, dynamic> json) =>
      _$ToggleswitchStateFromJson(json);
}
