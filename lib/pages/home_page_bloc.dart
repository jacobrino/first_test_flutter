import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';
import '../bloc/counter_state.dart';
import '../bloc/counter_event.dart';

import 'second_page_bloc.dart';

class HomePageBloc extends StatelessWidget {
  const HomePageBloc({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: BlocBuilder<
            CounterBloc,
            CounterState>(builder: (context, state) {
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
                    context.read<CounterBloc>().add(
                      IncrementCounter(),
                    );

                  },
                  child: const Text("+1"),
                ),

                ElevatedButton(
                  onPressed: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                        const SecondPage(),
                      ),
                    );

                  },
                  child:
                  const Text("Page 2"),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}