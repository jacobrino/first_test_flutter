import 'package:flutter/material.dart';
import 'package:first_test/pages/home_page_cycle_de_vie.dart';

void main() {
  runApp(const FirstActivity());
}

class FirstActivity extends StatelessWidget {
  const FirstActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demos',
      // L'application démarre désormais sur la page de bienvenue
      home: WelcomePage(),
    );
  }
}

// --- NOUVELLE PAGE DE BIENVENUE ---
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24.0),
        color: Colors.blueGrey[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.loop_rounded,
              size: 80,
              color: Colors.blue,
            ),
            const SizedBox(height: 24),
            const Text(
              'Bienvenue sur cette page de démonstration du cycle de vie !',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Navigation vers la page de test du cycle de vie
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(title: 'Cycle de Vie Flutter'),
                  ),
                );
              },
              icon: const Icon(Icons.login),
              label: const Text(
                'Entrer',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
