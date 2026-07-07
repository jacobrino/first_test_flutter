import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier
{
  //Permet d'avertir les widgets lorsque les données changent.
  int _counter = 0;
  int get counter => _counter;

  void increment()
  {
    _counter++;
    notifyListeners();
    print("increment notifyListeners");
  }

  void decrement()
  {
    _counter--;
    notifyListeners();
    print("decrement notifyListeners");
  }

  void reset()
  {
    _counter = 0;
    print("reset notifyListeners");
    notifyListeners();
  }
}