part of 'internet_bloc.dart';

@freezed
class InternetState with _$InternetState {
  factory InternetState({
    @Default(false) bool showErr,
    @Default(InternetStateStatus.none) InternetStateStatus internetStateStatus,
  }) = _InternetState;
}
