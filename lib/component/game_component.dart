import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter_game/decoration/mushroom.dart';

extension CustomizerGameComponent on Mushroom {
  void showScore(
    double score, {
    TextStyle? config,
    double initVelocityTop = -5,
    double gravity = 0.5,
    double maxDownSize = 20,
    DirectionTextDamage direction = DirectionTextDamage.RANDOM,
    bool onlyUp = false,
  }) {
    if (!hasGameRef) return;
    gameRef.add(
      TextDamageComponent(
        score.toInt().toString(),
        Vector2(
          center.x,
          y,
        ),
        config: config ??
            const TextStyle(
              fontSize: 14,
              color: Color(0xFFFFFFFF),
            ),
        initVelocityTop: initVelocityTop,
        gravity: gravity,
        direction: direction,
        onlyUp: onlyUp,
        maxDownSize: maxDownSize,
      ),
    );
  }
}
