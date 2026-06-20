import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({super.key, required this.title}) {
    print('[Cycle de vie] 0. Constructor StatefulWidget Variable = $title');
  }

  //StatefulWidget
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage>
{

  //-------------CYCLE DE VIE DEBUT----------------//
  _MyHomePageState() {
    print('[Cycle de vie] 0. Constructor State en mémoire');
    // Note : ici 'mounted' n'est pas encore actif, et 'widget.title' est inaccessible
  }

  @override
  void initState() {
    // 2. C'est le tout premier instant du cycle de vie où 'mounted' est officiellement TRUE.
    //Il n'existe pas de méthode comme onMounted();
    print("[Cycle de vie] 1. Le widget vient d'être injecté dans l'arbre ! mounted = $mounted");

    super.initState();
    // 1. Initialisation unique de l'état
    print('[Cycle de vie] 2. initState() - mounted = $mounted');

  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 2. Appelée juste après initState ou quand un InheritedWidget change
    print('[Cycle de vie] 3. didChangeDependencies() - Dépendances chargées/modifiées - mounted = $mounted');
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Phase de mise à jour : quand le widget parent change de configuration
    print('[Cycle de vie] 6.1 didUpdateWidget() - Le widget parent a changé - mounted = $mounted');
  }

  @override
  void reassemble() {
    super.reassemble();
    // Phase de développement : déclenchée lors d'un Hot Reload
    print('⚡ [Cycle de vie] 7. reassemble() - Hot Reload détecté - mounted = $mounted');
  }

  @override
  void deactivate() {
    // Phase de destruction : le widget est retiré temporairement de l'arbre
    print('❌ [Cycle de vie] 8. DESTRUCTION. deactivate() - Widget désactivé (retiré de l\'arbre) - mounted = $mounted');
    super.deactivate();
  }

  @override
  void dispose() {
    // Étape finale : destruction définitive et libération de la mémoire
    print('[Cycle de vie] 9. DESTRUCTION FINALE. dispose() - État détruit définitivement - mounted = $mounted');
    super.dispose();
  }


  @override
  Widget build(BuildContext context)
  {
    // 1. On entre dans la méthode de rendu : le widget est marqué comme "dirty"
    final isDirtyInitially = (context as Element).dirty;
    print('[Cycle de vie] 4. [build() démarre, DIRTY ] dirty = $isDirtyInitially');

    print('[Cycle de vie] 5. build() - mounted = $mounted');


    // 2. L'ASTUCE : On planifie une action qui s'exécutera juste APRÈS le rendu de l'écran
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Ce code s'exécute lorsque la frame est dessinée et que l'état est nettoyé
      final isDirtyNow = (context as Element).dirty;
      print('[Cycle de vie] 6. [Post Frame Callback] -> L\'écran est dessiné ! Le widget est repassé en CLEAN STATE (dirty = $isDirtyNow)\n');
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('Ho ana tay melissa kitia raha io'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  int _counter = 0;
  void _incrementCounter()
  {
    setState(() {
    _counter++;
    debugPrint('$_counter');
    print('[Cycle de vie] 6.2. setState - mounted = $mounted');

    });
  }

//-------------CYCLE DE VIE FIN----------------//


}
