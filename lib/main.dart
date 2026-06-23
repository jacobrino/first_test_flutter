/*CODE POUR LANCER LA LOGIQUE PRINCIPALE STATEFULWIDGET & STATELESSWIDGET & CYCLE DE VIE*/
/*
import 'package:flutter/material.dart';
//import 'package:first_test/app.dart';
import 'package:first_test/app_cycle_de_vie.dart';

void main() {
  runApp(const FirstActivity());
}
*/

/*CODE POUR LANCER LA LOGIQUE PRINCIPALE STATEFULWIDGET & STATELESSWIDGET & CYCLE DE VIE*/















/*CODE POUR LANCER PROVIDERS*/

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:first_test/app_provider.dart';
import 'package:first_test/pages/home_page_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomePageProvider(),
    );
  }
}
/*CODE POUR LANCER PROVIDERS*/