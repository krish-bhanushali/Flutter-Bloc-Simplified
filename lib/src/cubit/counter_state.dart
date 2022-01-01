part of 'counter_cubit.dart';

class CounterState extends Equatable {
  CounterState({required this.counterValue, this.wasIncremented});
  int counterValue;
  bool? wasIncremented;

  @override
  // TODO: implement props
  List<Object?> get props => [this.counterValue, this.wasIncremented];
}
