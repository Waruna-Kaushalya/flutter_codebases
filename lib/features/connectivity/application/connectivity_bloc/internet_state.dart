part of 'internet_bloc.dart';

@freezed
class InternetState with _$InternetState {
  const factory InternetState({
    required bool showErr,
    required InternetStateStatus internetStateStatus,
  }) = _InternetState;
}
