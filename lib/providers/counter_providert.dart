import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  CounterProvider({String? base}) {
    if (base != null && int.tryParse(base) != null) {
      _counter = int.parse(base);
    }
  }

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    if (_counter == 0) return;

    _counter--;
    notifyListeners();
  }

  get counter {
    return _counter;
  }
}
