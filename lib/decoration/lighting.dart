import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter_game/game.dart';

class Lamp extends GameDecoration with Lighting {
  Lamp(Vector2 position)
      : super(
          size: Vector2(16.0, 16.0),
          position: position,
        ) {
    setupLighting(
      LightingConfig(
        radius: tileSize * 3,
        color: Colors.orange.withOpacity(0.1),
        withPulse: true,
        pulseSpeed: 2,
      ),
    );
  }
}
