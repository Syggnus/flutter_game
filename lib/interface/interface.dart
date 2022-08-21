import 'package:bonfire/base/bonfire_game.dart';
import 'dart:async' as async;
import 'package:flutter/material.dart';
import 'package:flutter_game/chars/player.dart';

class Interface extends StatefulWidget {
  static const overlayKey = "Interface";
  static const privateKey = "playerInterface";
  final BonfireGame game;
  const Interface({Key? key, required this.game}) : super(key: key);

  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  double life = 0;
  double widthMax = 100;
  double widthCurrent = 100;
  late async.Timer _lifeTime;
  late async.Timer _scoreTime;

  @override
  void initState() {
    _lifeTime = async.Timer.periodic(
      const Duration(milliseconds: 100),
      _verifyLife,
    );
    _scoreTime = async.Timer.periodic(
      const Duration(milliseconds: 100),
      _verifyScore,
    );
    super.initState();
  }

  @override
  void dispose() {
    _lifeTime.cancel();
    _scoreTime.cancel();
    super.dispose();
  }

  void _verifyScore(async.Timer timer) {
    if (score != 0) {
      setState(() {
        score;
      });
    }
  }

  void _verifyLife(async.Timer timer) {
    if (life != (widget.game.player?.life ?? 0)) {
      setState(() {
        life = widget.game.player?.life ?? 0;

        final percet = life / (widget.game.player?.maxLife ?? 0);
        widthCurrent = widthMax * percet;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "assets/images/avatar.png",
                  scale: 3.5,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Stack(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: widthCurrent,
                    height: 20,
                    decoration: BoxDecoration(
                      color: life >= 70
                          ? Colors.green
                          : life >= 30
                              ? Colors.yellow
                              : Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: widthMax,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          SizedBox(
            width: 80,
            height: 40,
            child: RichText(
              text: TextSpan(
                text: "Score : $score",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
