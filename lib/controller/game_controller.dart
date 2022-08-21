import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter_game/chars/player.dart';
import 'package:flutter_game/decoration/mushroom.dart';
import '../game.dart';

class MyGameController extends GameComponent {
  bool endGame = false;

  @override
  void update(double dt) {
    if (checkInterval("gameover", 500, dt)) {
      if (gameRef.player!.isDead && !endGame) {
        endGame = true;
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: const Text("Você Morreu"),
              actions: [
                TextButton(
                  onPressed: () {
                    score = 0;
                    mushroom = 38;
                    _goHome();
                  },
                  child: const Text("Restart"),
                )
              ],
            );
          },
        );
      }
    }
    if (checkInterval("endgame", 500, dt)) {
      if (gameRef.livingEnemies().isEmpty && !endGame) {
        endGame = true;
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: const Text(
                  "Parabéns você zerou o game matando todos os inimigos"),
              actions: [
                TextButton(
                  onPressed: () {
                    mushroom = 38;
                    _goHome();
                  },
                  child: const Text("Restart"),
                )
              ],
            );
          },
        );
      }
    }

    if (checkInterval('endgame', 500, dt)) {
      if (mushroom == 0 && !endGame) {
        endGame = true;
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: const Text(
                  "Parabéns você zerou o game coletando todos os cogumelos"),
              actions: [
                TextButton(
                  onPressed: () {
                    mushroom = 38;
                    _goHome();
                  },
                  child: const Text("Restart"),
                )
              ],
            );
          },
        );
      }
    }
    super.update(dt);
  }

  void _goHome() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) {
        return const Game();
      }),
      (route) => false,
    );
  }
}
