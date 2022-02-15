import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'counter_state.dart';
part 'counter_cubit.freezed.dart';
part 'counter_cubit.g.dart';

class CounterCubit extends Cubit<CounterCubitState> with HydratedMixin {
  CounterCubit()
      : super(CounterCubitState(counterValue: 0, wasIncremented: false));

  void increment() => emit(CounterCubitState(
      counterValue: state.counterValue + 1, wasIncremented: true));

  void decrement() => emit(state.copyWith(
      counterValue: state.counterValue - 1, wasIncremented: false));

  @override
  CounterCubitState? fromJson(Map<String, dynamic> json) =>
      CounterCubitState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(CounterCubitState state) => state.toJson();
}
