import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _num = 0;
  int get getNumber => _num;

  void increaseCounter() {
    _num++;
    notifyListeners();
  }

  void decreaseCounter() {
    if (_num > 0) {
      _num--;
      notifyListeners();
    }
  }
}
