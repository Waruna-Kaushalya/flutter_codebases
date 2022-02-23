// part of 'counter_bloc.dart';

// abstract class CounterEvent {}

// class Increment extends CounterEvent {}

// class Decrement extends CounterEvent {}

part of 'counter_bloc.dart';

@freezed
class CounterEvent with _$CounterEvent {
  const factory CounterEvent.increment() = Increment;
  const factory CounterEvent.decrement() = Decrement;
}
