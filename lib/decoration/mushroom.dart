import 'package:bonfire/bonfire.dart';
import 'package:flutter_game/chars/player.dart';
import 'package:flutter_game/component/game_component.dart';
import '../sprite sheets/mushroom_sprite_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_game/sprite%20sheets/player_sprite_sheet.dart';

bool firstDialogMushroom = true;
int mushroom = 38;

class Mushroom extends GameDecoration with Sensor {
  Mushroom(Vector2 position)
      : super.withSprite(
          sprite: DecorationSpriteSheet.mushroom,
          position: position,
          size: Vector2(32, 32),
        );

  @override
  void onContact(GameComponent component) {
    if (component is PlayerHero) {
      mushroom--;
      score += 100;
      showScore(100);
      if (firstDialogMushroom == true) {
        dialogMushroom();
      }

      removeFromParent();
    }
  }

  void dialogMushroom() {
    TalkDialog.show(
      context,
      boxTextHeight: 50,
      padding: const EdgeInsets.all(10),
      [
        Say(
          text: [
            const TextSpan(text: "Eu gostei do gosto, não é tão ruin..."),
          ],
          person: SizedBox(
            height: 100,
            width: 100,
            child: GameSpriteSheet.heroIdleRight.asWidget(),
          ),
        )
      ],
    );
    firstDialogMushroom = false;
  }
}
