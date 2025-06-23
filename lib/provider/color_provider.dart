import 'package:flutter/material.dart';

class ColorProvider with ChangeNotifier {
  Color _color = Colors.grey;
  String _colorName = "Grey";

  Color get color => _color;
  String get getColorName => _colorName;

  void setColor(Color color) {
    _color = color;
    notifyListeners();
  }

  void setColorName(String newName) {
    _colorName = newName;
    notifyListeners();
  }
}
