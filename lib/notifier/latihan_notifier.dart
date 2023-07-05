import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class LatihanNotifier extends ChangeNotifier {
  String? imagePath;

  XFile? imageFile;

  void setImageFile(XFile? value) {
    imageFile = value;
    notifyListeners();
  }

  void setImagePath(String? path) {
    imagePath = path;
    notifyListeners();
  }
}
