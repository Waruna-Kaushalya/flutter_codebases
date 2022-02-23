import 'package:injectable/injectable.dart';

abstract class CounterChnage {
  int counterIncrement(int value);
  int counterDecrement(int value);
}

// @Named("impl1")
// @Named("impl1")
@Environment("dev")
@LazySingleton(as: CounterChnage)
class CounterChangeByTwo implements CounterChnage {
  @override
  int counterDecrement(int value) {
    return value - 2;
  }

  @override
  int counterIncrement(int value) {
    return value + 2;
  }
}

// @Named("impl2")
@Environment("prod")
@LazySingleton(as: CounterChnage)
class CounterChangeByOne implements CounterChnage {
  @override
  int counterDecrement(int value) {
    return value - 1;
  }

  @override
  int counterIncrement(int value) {
    return value + 1;
  }
}
