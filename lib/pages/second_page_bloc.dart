import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';
import '../bloc/counter_event.dart';
import '../bloc/counter_state.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      /*Scaffold cree automatiquement le boutton retour dès qu'il existe un avant page*/
      appBar: AppBar(
        title: const Text("Page 2"),
      ),
      body: Center(
        child: BlocBuilder<
            CounterBloc,
            CounterState>(
          builder: (context, state) {

            return Column(
              mainAxisAlignment:
              MainAxisAlignment.center,
              children: [

                Text(
                  '${state.counter}',
                  style: const TextStyle(
                    fontSize: 40,
                  ),
                ),

                ElevatedButton(
                  onPressed: () {

                    context
                        .read<CounterBloc>()
                        .add(
                      IncrementCounter(),
                    );

                  },
                  child:
                  const Text("+1"),
                ),

                ElevatedButton(
                  onPressed: () {

                    context
                        .read<CounterBloc>()
                        .add(
                      DecrementCounter(),
                    );

                  },
                  child:
                  const Text("-1"),
                ),

                ElevatedButton(
                  onPressed: () {

                    context
                        .read<CounterBloc>()
                        .add(
                      ResetCounter(),
                    );

                  },
                  child:
                  const Text("Reset"),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}