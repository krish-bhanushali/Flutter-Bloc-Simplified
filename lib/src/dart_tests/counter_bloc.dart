import 'package:bloc/bloc.dart';

enum CounterEvent { increment, decrement }

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterEvent>((event, emit) {
      // TODO: implement event handler
      switch (event) {
        case CounterEvent.increment:
          emit(state + 1);

          break;
        case CounterEvent.decrement:
          emit(state - 1);
          break;
        default:
          throw UnimplementedError();
      }
    });
  }
}

// Future<void> main(List<String> args) async {
//   final bloc = CounterBloc();
//   final streamSubscription = bloc.stream.listen((event) {
//     print(event);
//   });

//   bloc.add(CounterEvent.increment);
//   bloc.add(CounterEvent.increment);

//   bloc.add(CounterEvent.increment);

//   bloc.add(CounterEvent.increment);

//   await Future.delayed(Duration(seconds: 0));

//   await streamSubscription.cancel();
//   await bloc.close();
// }
