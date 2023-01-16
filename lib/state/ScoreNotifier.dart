import 'package:flutter/material.dart';

late ScoreNotifier scoreNotifier;

class ScoreNotifier extends ChangeNotifier {
  int leftScore = 0;
  int rightScore = 0;

  void leftScored() {
    leftScore += 1;
    notifyListeners();
  }

  void rightScored() {
    rightScore += 1;
    notifyListeners();
  }
}
