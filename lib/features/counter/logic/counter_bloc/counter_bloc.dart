import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:flutter_codebase/features/counter/logic/counter/counter.dart';
import 'package:injectable/injectable.dart';

part 'counter_bloc.freezed.dart';
part 'counter_bloc.g.dart';
part 'counter_event.dart';
part 'counter_state.dart';

@injectable
class CounterBloc extends Bloc<CounterEvent, CounterState> with HydratedMixin {
  final CounterChnage _counterChnage;
  CounterBloc(
    this._counterChnage,
  ) : super(CounterState(counterValue: 0, wasIncremented: false)) {
    on<CounterEvent>((event, emit) async {
      // if (event is Increment) {
      //   emit(state.copyWith(
      //       counterValue: state.counterValue + 1, wasIncremented: true));
      // } else if (event is Decrement) {
      //   emit(state.copyWith(
      //       counterValue: state.counterValue - 1, wasIncremented: false));
      // }
      event.map(increment: (value) {
        emit(state.copyWith(
          counterValue: _counterChnage.counterIncrement(state.counterValue),
          wasIncremented: true,
        ));
      }, decrement: (value) {
        emit(state.copyWith(
          counterValue: _counterChnage.counterDecrement(state.counterValue),
          wasIncremented: false,
        ));
      });
    });
  }

  @override
  CounterState? fromJson(Map<String, dynamic> json) =>
      CounterState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(CounterState state) => state.toJson();
}
