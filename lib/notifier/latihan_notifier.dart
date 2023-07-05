import 'package:flutter/material.dart';

class LatihanNotifier extends ChangeNotifier {
  String? imagePath;

  void setImagePath(String? path) {
    imagePath = path;
    notifyListeners();
  }
}
