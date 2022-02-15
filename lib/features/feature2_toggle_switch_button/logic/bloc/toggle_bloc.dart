import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

//? for json serialization
part 'toggle_bloc.freezed.dart';
part 'toggle_bloc.g.dart';

part 'toggle_event.dart';
part 'toggle_state.dart';

class ToggleswitchBloc extends Bloc<ToggleEvent, ToggleswitchState>
    with HydratedMixin {
  ToggleswitchBloc()
      : super(ToggleswitchState(
            appNotification: false, emailNotification: false)) {
    on<ToggleEvent>((event, emit) {
      if (event is ToggleAppNotification) {
        emit(state.copyWith(appNotification: event.appNoti));
      }
      if (event is ToggleEmailNotifications) {
        emit(state.copyWith(emailNotification: event.emailNoti));
      }
    });
  }

  @override
  ToggleswitchState? fromJson(Map<String, dynamic> json) =>
      ToggleswitchState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(ToggleswitchState state) => state.toJson();
}
