import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {

  CounterBloc()
      : super(const CounterState(counter: 0))
  {

    on<IncrementCounter>((event, emit) {
      print("On IncrementCounter $event");

      emit(
        CounterState(
          counter: state.counter + 1,
        ),
      );
    });

    on<DecrementCounter>((event, emit) {
      print("On DecrementCounter $event");
      emit(
        CounterState(
          counter: state.counter - 1,
        ),
      );
    });

    on<ResetCounter>((event, emit) {
      print("On ResetCounter $event");

      emit(const CounterState(counter: 0),
      );
    });
  }
}