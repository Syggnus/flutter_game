import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter_game/chars/player.dart';
import 'package:flutter_game/decoration/mushroom.dart';
import 'package:flutter_game/sprite%20sheets/player_sprite_sheet.dart';
import '../sprite sheets/mushroom_sprite_sheet.dart';
import 'dart:async' as async;

bool firstDialogRedMushroom = true;
late async.Timer damageTime;

class RedMushroom extends GameDecoration with Sensor {
  RedMushroom(Vector2 position)
      : super.withSprite(
          sprite: DecorationSpriteSheet.redMushroom,
          position: position,
          size: Vector2(32, 32),
        );

  @override
  void onContact(GameComponent component) {
    if (component is PlayerHero) {
      mushroom--;
      score += 100;
      damage = 100;
      showDamage(100); //Trocar para showScore();
      damageTime = async.Timer.periodic(
        const Duration(seconds: 10),
        (timer) {
          damage = 20;
        },
      );

      component.addLife(20);
      if (firstDialogRedMushroom == true) {
        dialogRedMushroom();
      }
      removeFromParent();
    }
  }

  void dialogRedMushroom() {
    TalkDialog.show(
      context,
      boxTextHeight: 50,
      padding: const EdgeInsets.all(10),
      [
        Say(
          text: [
            const TextSpan(
                text: "Eu me sinto mais forte e bem, que coisa estranha..."),
          ],
          person: SizedBox(
            height: 100,
            width: 100,
            child: GameSpriteSheet.heroIdleRight.asWidget(),
          ),
        )
      ],
    );
    firstDialogRedMushroom = false;
  }
}
