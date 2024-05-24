import 'dart:math';

import 'package:flutter/material.dart';

class Diceprovider extends ChangeNotifier {
  final random = Random();
  int imagenumber = 1;

  rollthedice() {
    imagenumber = random.nextInt(6) + 1;
    notifyListeners();
  }
}
