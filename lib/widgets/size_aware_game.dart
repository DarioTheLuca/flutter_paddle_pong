import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import '../pong_game.dart';

class SizeAwareGame extends StatelessWidget {
  const SizeAwareGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GameWidget(game: Pong(constraints));
      },
    );
  }
}
