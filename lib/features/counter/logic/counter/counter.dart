abstract class CounterChnage {
  int counterIncrement(int value);
  int counterDecrement(int value);
}

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
