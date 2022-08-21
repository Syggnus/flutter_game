import 'package:bonfire/bonfire.dart';
import 'package:flutter/rendering.dart';
import '../game.dart';
import '../sprite sheets/bandit_sprite_sheet.dart';
import '../sprite sheets/simple_attack_sprite_sheet.dart';
import 'dart:async' as async;

class Bandit extends SimpleEnemy with ObjectCollision, AutomaticRandomMovement {
  bool canMove = false;
  late async.Timer canMoveTime;

  Bandit(Vector2 position)
      : super(
          size: Vector2(36.0, 36.0),
          position: position,
          animation: SimpleDirectionAnimation(
            idleLeft: BanditSpriteSheet.idleLeft,
            idleRight: BanditSpriteSheet.idleRight, //required
            runLeft: BanditSpriteSheet.runLeft,
            runRight: BanditSpriteSheet.runRight,
          ),
          speed: 100,
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
  }

  @override
  void update(double dt) {
    //Solução provisória para o bug do inimigo saindo do mapa.

    canMoveTime = async.Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        canMove = true;
      },
    );

    if (canMove == true) {
      seePlayer(
        observed: (player) {
          seeAndMoveToPlayer(
            closePlayer: (player) {
              attack();
            },
            radiusVision: tileSize * 5,
            margin: 4,
          );
        },
        notObserved: () {
          runRandomMovement(
            dt,
            speed: 100,
            minDistance: 1200,
            timeKeepStopped: 10,
          );
        },
        radiusVision: tileSize * 2,
      );
    }

    super.update(dt);
  }

  void attack() {
    simpleAttackMelee(
      damage: 20,
      size: Vector2(16, 16),
      animationLeft: SimplesAttackSpriteSheet.attackLeft,
      animationRight: SimplesAttackSpriteSheet.attackRight,
      animationUp: SimplesAttackSpriteSheet.attackTop,
      animationDown: SimplesAttackSpriteSheet.attackDown,
    );
  }

  @override
  void render(Canvas canvas) {
    drawDefaultLifeBar(
      canvas,
      borderWidth: 1,
      borderRadius: BorderRadius.zero,
      align: const Offset(0, -5),
    );
    super.render(canvas);
  }

  @override
  void receiveDamage(AttackFromEnum attacker, double damage, identify) {
    canMove = false;
    if (lastDirectionHorizontal == Direction.left) {
      animation?.playOnce(
        BanditSpriteSheet.receiveDamageLeft,
        runToTheEnd: true,
        onFinish: () {
          canMove = true;
        },
      );
    } else {
      animation?.playOnce(
        BanditSpriteSheet.receiveDamageRight,
        runToTheEnd: true,
        onFinish: () {
          canMove = true;
        },
      );
    }
    showDamage(damage);
    super.receiveDamage(attacker, damage, identify);
  }

  @override
  void die() {
    canMove = false;
    if (lastDirectionHorizontal == Direction.left) {
      animation?.playOnce(
        BanditSpriteSheet.dieLeft,
        runToTheEnd: true,
        onFinish: () {
          canMove = false;
          removeFromParent();
        },
      );
    } else {
      animation?.playOnce(
        BanditSpriteSheet.dieRight,
        runToTheEnd: true,
        onFinish: () {
          canMove = false;
          removeFromParent();
        },
      );
    }

    super.die();
  }
}
