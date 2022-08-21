import 'package:bonfire/bonfire.dart';

class BanditSpriteSheet {
  static Future<SpriteAnimation> get idleLeft => SpriteAnimation.load(
        "bandit_.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(96, 0),
        ),
      );

  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
        "bandit_.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(0, 0),
        ),
      );

  static Future<SpriteAnimation> get runRight => SpriteAnimation.load(
        "bandit_.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(0, 48),
        ),
      );

  static Future<SpriteAnimation> get runLeft => SpriteAnimation.load(
        "bandit_.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(96, 48),
        ),
      );

  static Future<SpriteAnimation> get receiveDamageRight => SpriteAnimation.load(
        "bandit_.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(0, 96),
        ),
      );

  static Future<SpriteAnimation> get receiveDamageLeft => SpriteAnimation.load(
        "bandit_.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(96, 96),
        ),
      );

  static Future<SpriteAnimation> get dieRight => SpriteAnimation.load(
        "bandit_.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.30,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(24, 120),
        ),
      );

  static Future<SpriteAnimation> get dieLeft => SpriteAnimation.load(
        "bandit_.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.30,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(120, 120),
        ),
      );
}
