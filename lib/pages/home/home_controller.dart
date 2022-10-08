import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  String nome = '';

  void init() {
    nome = 'Adriano Reis';
    notifyListeners();
  }

  void changename(String newName) {
    nome = newName;
    notifyListeners();
  }
}
