import 'package:bonfire/bonfire.dart';

class SimplesAttackSpriteSheet {
  static Future<SpriteAnimation> get attackLeft => SpriteAnimation.load(
        "atack_effect_left.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(16, 16),
        ),
      );

  static Future<SpriteAnimation> get attackRight => SpriteAnimation.load(
        "atack_effect_right.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(16, 16),
        ),
      );
  static Future<SpriteAnimation> get attackTop => SpriteAnimation.load(
        "atack_effect_top.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(16, 16),
        ),
      );
  static Future<SpriteAnimation> get attackDown => SpriteAnimation.load(
        "atack_effect_bottom.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(16, 16),
        ),
      );
}
