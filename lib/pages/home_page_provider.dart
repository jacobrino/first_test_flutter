import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:first_test/app_provider.dart';
import 'package:first_test/pages/second_page_provider.dart';

class HomePageProvider extends StatelessWidget {
  const HomePageProvider({super.key});

  @override
  Widget build(BuildContext context) {

    final provider = context.watch<AppProvider>();
    print("Provider context watch AppProvider home_page ");

    /*final username = context.select<AppProvider, String>(
          (provider) => provider.username,
    );*/
    // Pour selectionner une variable spécifique pour éviter de rebuilder tout composant.

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              'Compteur : ${provider.counter}',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                provider.increment();
              },
              child: const Text('Incrémenter'),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SecondPage(),
                  ),
                );
              },
              child: const Text('Aller à la page 2'),
            ),
          ],
        ),
      ),
    );
  }
}