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