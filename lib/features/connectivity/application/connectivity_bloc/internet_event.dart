part of 'internet_bloc.dart';

@freezed
class InternetEvent with _$InternetEvent {
  const factory InternetEvent.started() = _Started;
  const factory InternetEvent.checkConnection({
    required InternetStateStatus connectivityResult,
  }) = _CheckConnection;
}
