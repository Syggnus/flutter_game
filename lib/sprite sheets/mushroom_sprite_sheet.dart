import 'package:bonfire/bonfire.dart';

class DecorationSpriteSheet {
  static Future<Sprite> get redMushroom => Sprite.load(
        "map/plainDecoration_0.png",
        srcPosition: Vector2(128, 16),
        srcSize: Vector2(16, 16),
      );

  static Future<Sprite> get mushroom => Sprite.load(
        "map/plainDecoration_0.png",
        srcPosition: Vector2(112, 16),
        srcSize: Vector2(16, 16),
      );
}
