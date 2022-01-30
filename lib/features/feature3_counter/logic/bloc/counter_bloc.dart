import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';
part 'counter_bloc.freezed.dart';
part 'counter_bloc.g.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> with HydratedMixin {
  CounterBloc() : super(CounterState(counterValue: 0, wasIncremented: false)) {
    on<CounterEvent>((event, emit) {
      if (event is Increment) {
        emit(state.copyWith(
            counterValue: state.counterValue + 1, wasIncremented: true));
      } else if (event is Decrement) {
        emit(state.copyWith(
            counterValue: state.counterValue - 1, wasIncremented: false));
      }
    });
  }

  @override
  CounterState? fromJson(Map<String, dynamic> json) =>
      CounterState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(CounterState state) => state.toJson();
}
