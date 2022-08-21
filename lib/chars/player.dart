import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_game/game.dart';
import 'package:flutter_game/sprite%20sheets/player_sprite_sheet.dart';
import 'package:flutter_game/sprite%20sheets/simple_attack_sprite_sheet.dart';

double damage = 20;
double score = 0;

class PlayerHero extends SimplePlayer with ObjectCollision, Lighting {
  PlayerHero(Vector2 position)
      : super(
          size: Vector2(36.0, 36.0),
          position: position,
          animation: SimpleDirectionAnimation(
            idleLeft: GameSpriteSheet.heroIdleLeft,
            idleRight: GameSpriteSheet.heroIdleRight, //required
            runLeft: GameSpriteSheet.heroRunLeft,
            runRight: GameSpriteSheet.heroRunRight,
          ),
          speed: 150,
          life: 100,
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
            size: Vector2(14, 8),
            align: Vector2(10, 25),
          ),
        ],
      ),
    );

    setupLighting(
      LightingConfig(
        radius: tileSize * 2.5,
        color: Colors.transparent,
        withPulse: true,
        pulseSpeed: 2,
      ),
    );
  }

  @override
  void joystickAction(JoystickActionEvent event) {
    if (event.event == ActionEvent.DOWN &&
        (event.id == 1 || event.id == LogicalKeyboardKey.space.keyId)) {
      attack();
    }
    super.joystickAction(event);
  }

  void attack() {
    simpleAttackMelee(
      damage: damage,
      size: Vector2(16, 16),
      withPush: false,
      animationLeft: SimplesAttackSpriteSheet.attackLeft,
      animationRight: SimplesAttackSpriteSheet.attackRight,
      animationUp: SimplesAttackSpriteSheet.attackTop,
      animationDown: SimplesAttackSpriteSheet.attackDown,
    );
  }

  @override
  void receiveDamage(AttackFromEnum attacker, double damage, identify) {
    if (lastDirectionHorizontal == Direction.left) {
      animation?.playOnce(
        GameSpriteSheet.heroReceiveDamageRunLeft,
        runToTheEnd: true,
      );
    } else {
      animation?.playOnce(
        GameSpriteSheet.heroReceiveDamageRunRight,
        runToTheEnd: true,
      );
    }
    super.receiveDamage(attacker, damage, identify);
  }

  @override
  void die() {
    if (lastDirectionHorizontal == Direction.left) {
      animation?.playOnce(
        GameSpriteSheet.dieLeft,
        runToTheEnd: true,
        onFinish: () {
          removeFromParent();
        },
      );
    } else {
      animation?.playOnce(
        GameSpriteSheet.dieRight,
        runToTheEnd: true,
        onFinish: () {
          removeFromParent();
        },
      );
      showDamage(damage);
    }

    super.die();
  }
}
