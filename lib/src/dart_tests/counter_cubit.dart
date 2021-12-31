import 'package:bloc/bloc.dart';

class SubjectCubit extends Cubit<int> {
  SubjectCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

// Future<void> main(List<String> args) async {
//   final cubit = SubjectCubit();
//   final streamSubscription = cubit.stream.listen((event) {
//     print(event);
//   });

//   cubit.increment();
//   cubit.increment();
//   cubit.increment();
//   cubit.increment();

//   await Future.delayed(Duration(seconds: 0));

//   await streamSubscription.cancel();
//   await cubit.close();
// }
