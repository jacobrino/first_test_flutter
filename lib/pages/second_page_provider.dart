import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:first_test/app_provider.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {

    final provider = context.watch<AppProvider>();
    print("Provider context watch AppProvider second_page ");

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              'Valeur : ${provider.counter}',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                provider.increment();
              },
              child: const Text('+1'),
            ),

            ElevatedButton(
              onPressed: () {
                provider.decrement();
              },
              child: const Text('-1'),
            ),

            ElevatedButton(
              onPressed: () {
                provider.reset();
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}