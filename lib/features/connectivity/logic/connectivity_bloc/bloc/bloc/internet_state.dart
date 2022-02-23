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

enum ShowToastStatus { trueToast, falseToast }

extension ShowToastStatusX on ShowToastStatus {
  bool get isTrueToast => this == ShowToastStatus.trueToast;
  bool get isFalseToast => this == ShowToastStatus.falseToast;
}

@freezed
class InternetState with _$InternetState {
  factory InternetState({
    @Default(ShowToastStatus.falseToast) ShowToastStatus showToast,
    required InternetStateStatus internetStateStatus,
  }) = _InternetState;
}
