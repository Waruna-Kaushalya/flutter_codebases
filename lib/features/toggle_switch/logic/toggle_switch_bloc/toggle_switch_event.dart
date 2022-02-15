part of 'toggle_switch_bloc.dart';

abstract class ToggleEvent extends Equatable {
  const ToggleEvent();

  @override
  List<Object> get props => [];
}

class ToggleAppNotification extends ToggleEvent {
  final bool appNoti;
  const ToggleAppNotification({
    required this.appNoti,
  });
  @override
  List<Object> get props => [appNoti];
}

class ToggleEmailNotifications extends ToggleEvent {
  final bool emailNoti;
  const ToggleEmailNotifications({
    required this.emailNoti,
  });
  @override
  List<Object> get props => [emailNoti];
}
