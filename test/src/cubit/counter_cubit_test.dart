import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_simplified/src/cubit/counter_cubit.dart';
import 'package:test/test.dart';

void main() {
  group('CounterCubit', () {
    late CounterCubit counterCubit;
    setUp(() {
      counterCubit = CounterCubit();
    });

    tearDown(() {
      counterCubit.close();
    });

    test('initial state for counterValue is CounterState(counterValue:0)', () {
      expect(counterCubit.state, CounterState(counterValue: 0));
    });

    blocTest(
        'cubit should emit a CounterState(counterValue:1,wasIncremented:true) when cubit.increment() function is called',
        build: () => counterCubit,
        act: (bloc) => counterCubit.increment(),
        expect: () => [CounterState(counterValue: 1, wasIncremented: true)]);

    blocTest(
        'cubit should emit a CounterState(counterValue:-1,wasIncremented:false) when cubit.decrement() function is called',
        build: () => counterCubit,
        act: (bloc) => counterCubit.decrement(),
        expect: () => [CounterState(counterValue: -1, wasIncremented: false)]);
  });
}
