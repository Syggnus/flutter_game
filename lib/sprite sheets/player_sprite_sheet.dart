import 'package:bonfire/bonfire.dart';

class GameSpriteSheet {
  static Future<SpriteAnimation> get heroIdleLeft => SpriteAnimation.load(
        "fHero.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(96, 0),
        ),
      );

  static Future<SpriteAnimation> get heroIdleRight => SpriteAnimation.load(
        "fHero.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(0, 0),
        ),
      );

  static Future<SpriteAnimation> get heroRunRight => SpriteAnimation.load(
        "fHero.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(0, 48),
        ),
      );

  static Future<SpriteAnimation> get heroRunLeft => SpriteAnimation.load(
        "fHero.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(96, 48),
        ),
      );

  static Future<SpriteAnimation> get heroReceiveDamageRunRight =>
      SpriteAnimation.load(
        "fHero.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(0, 96),
        ),
      );

  static Future<SpriteAnimation> get heroReceiveDamageRunLeft =>
      SpriteAnimation.load(
        "fHero.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(96, 96),
        ),
      );

  static Future<SpriteAnimation> get dieRight => SpriteAnimation.load(
        "fHero.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.30,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(24, 120),
        ),
      );

  static Future<SpriteAnimation> get dieLeft => SpriteAnimation.load(
        "fHero.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.30,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(120, 120),
        ),
      );

  static Future<SpriteAnimation> get attackLeft => SpriteAnimation.load(
        "atack_effect_left.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(16, 16),
        ),
      );

  static Future<SpriteAnimation> get attackRight => SpriteAnimation.load(
        "atack_effect_left.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(16, 16),
        ),
      );
  static Future<SpriteAnimation> get attackUp => SpriteAnimation.load(
        "atack_effect_left.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(16, 16),
        ),
      );
  static Future<SpriteAnimation> get attackDown => SpriteAnimation.load(
        "atack_effect_left.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(16, 16),
        ),
      );
}
