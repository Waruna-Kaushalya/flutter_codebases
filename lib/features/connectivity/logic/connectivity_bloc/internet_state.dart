part of 'internet_bloc.dart';

// @freezed
// class InternetState with _$InternetState {
//   const factory InternetState.initial() = _Initial;
// }

enum InternetStateStatus { wifi, mobile, none }

extension InternetStateStatusX on InternetStateStatus {
  bool get isWifil => this == InternetStateStatus.wifi;
  bool get isMobile => this == InternetStateStatus.mobile;
  bool get isNone => this == InternetStateStatus.none;
}

@freezed
class InternetState with _$InternetState {
  factory InternetState({
    @Default(false) bool showErr,
    @Default(InternetStateStatus.none) InternetStateStatus internetStateStatus,
  }) = _InternetState;
}
