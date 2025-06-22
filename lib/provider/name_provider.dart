import 'package:flutter/material.dart';

class NameProvider with ChangeNotifier {
  String _name = "Santosh";
  String get getName => _name;

  void changeName({required String newName}) {
    _name = newName;
    notifyListeners();
  }

  void removeName() {
    _name = "";
    notifyListeners();
  }
}
