//import 'package:first_test/pages/home_page.dart';
import 'package:first_test/pages/home_page_cycle_de_vie.dart';

import 'package:flutter/material.dart';

class FirstActivity extends StatelessWidget
{
  const FirstActivity({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demos',

      //home: const MyHomePage(title: 'Flutter Demo Home'),
      home: MyHomePage(title: 'Flutter Demo Home'), //For test cycle de vie
    );
  }
}
