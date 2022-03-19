import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  CounterProvider({int base = 0}) {
    _count = base;
  }

  int _count = 0;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  int get count => _count;
}
