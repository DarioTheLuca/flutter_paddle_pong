import 'package:flutter/material.dart';
import 'state/ScoreNotifier.dart';
import 'widgets/PongApp.dart';
/*  Instructions */

// Up & Down Controls:
// Left Player: [W] & [S] keys
// Right Player: [Up Arrow] & [Down Arrow] keys

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  scoreNotifier = ScoreNotifier();
  runApp(const PongApp());
}
