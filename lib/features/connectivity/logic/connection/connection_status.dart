enum InternetStateStatus { wifi, mobile, none }

extension InternetStateStatusX on InternetStateStatus {
  bool get isWifil => this == InternetStateStatus.wifi;
  bool get isMobile => this == InternetStateStatus.mobile;
  bool get isNone => this == InternetStateStatus.none;
}
