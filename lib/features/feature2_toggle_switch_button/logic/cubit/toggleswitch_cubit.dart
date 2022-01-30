//! without freezed package
// import 'dart:convert';
// import 'package:equatable/equatable.dart';
// import 'package:hydrated_bloc/hydrated_bloc.dart';

// part 'toggleswitch_state.dart';

// class ToggleswitchCubit extends Cubit<ToggleswitchState> with HydratedMixin {
//   ToggleswitchCubit()
//       : super(const ToggleswitchState(
//           appNotification: false,
//           emailNotification: false,
//         ));

//   void toggleAppNotification(bool newvalue) {
//     emit(state.copyWith(appNotification: newvalue));
//   }

//   void toggleEmailNotifications(bool newValue) {
//     emit(state.copyWith(emailNotification: newValue));
//   }

//   @override
//   ToggleswitchState? fromJson(Map<String, dynamic> json) =>
//       ToggleswitchState.fromMap(json);

//   @override
//   Map<String, dynamic>? toJson(ToggleswitchState state) => state.toMap();
// }

//! With Freezed Package
//! importent
//? import freezed_annotation
//? cehck freezed.dart and g.dart file names
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

//? for json serialization
part 'toggleswitch_cubit.freezed.dart';
part 'toggleswitch_cubit.g.dart';

part 'toggleswitch_state.dart';

class ToggleswitchCubit extends Cubit<ToggleswitchState> with HydratedMixin {
  ToggleswitchCubit()
      : super(ToggleswitchState(
            appNotification: false, emailNotification: false));

  void toggleAppNotification(bool newvalue) {
    emit(state.copyWith(appNotification: newvalue));
  }

  void toggleEmailNotifications(bool newValue) {
    emit(state.copyWith(emailNotification: newValue));
  }

  @override
  ToggleswitchState? fromJson(Map<String, dynamic> json) =>
      ToggleswitchState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(ToggleswitchState state) => state.toJson();
}
