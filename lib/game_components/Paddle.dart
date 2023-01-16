import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import '../pong_game.dart';

class Paddle extends RectangleComponent
    with HasGameRef<Pong>, CollisionCallbacks {
  Paddle({
    super.position,
    super.size,
    super.angle,
    super.anchor,
    super.children,
    super.priority,
    super.paint,
  });

  late ShapeHitbox hitbox;

  @override
  Future<void> onLoad() async {
    super.onLoad();
    final defaultPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    hitbox = RectangleHitbox()
      ..paint = defaultPaint
      ..renderShape = true;
    add(hitbox);
  }
}
