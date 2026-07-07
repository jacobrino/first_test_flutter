import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
    required this.title,
    required this.counter,
  });

  final String title;
  final int counter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
        title: Text(title), // Plus besoin de "widget.title" ici
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Le nombre de fois que le bouton a été appuyé :'),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // On peut faire un print, mais l'écran ne se mettra pas à jour
          print('Bouton appuyé mais aucune mise à jour peut être fait car stateless');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}