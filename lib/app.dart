import 'package:first_test/pages/home_page.dart';
import 'package:flutter/material.dart';

class FirstActivity extends StatelessWidget
{
  const FirstActivity({super.key});

  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demos',

      //home: const MyHomePage(title: 'Flutter Demo Home'),
      home: MyHomePage(title: 'Flutter Demo Home', counter: 2), //For test cycle de vie
    );
  }
}
