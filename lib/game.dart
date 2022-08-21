import 'package:bonfire/bonfire.dart';
import 'package:flutter_game/controller/game_controller.dart';
import 'package:flutter_game/decoration/lighting.dart';
import 'package:flutter_game/interface/interface.dart';
import 'chars/bandit.dart';
import 'chars/player.dart';
import 'decoration/mushroom.dart';
import 'decoration/red_mushroom.dart';
import 'package:flutter/material.dart';

const double tileSize = 32;

class Game extends StatelessWidget {
  const Game({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      overlayBuilderMap: {
        Interface.overlayKey: (context, game) => Interface(game: game),
      },
      initialActiveOverlays: const [
        Interface.overlayKey,
      ],
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(
            keyboardDirectionalType: KeyboardDirectionalType.wasdAndArrows),
        directional: JoystickDirectional(
          color: Colors.white,
        ),
        actions: [
          JoystickAction(
            actionId: 1,
            color: Colors.white,
            margin: const EdgeInsets.only(right: 50, bottom: 50),
          ),
        ],
      ),
      map: TiledWorldMap(
        "map/Mapa1.json",
        objectsBuilder: {
          "lamp": (properties) => Lamp(properties.position),
          "Bandit": (properties) => Bandit(properties.position),
          "RedMushroom": (properties) => RedMushroom(properties.position),
          "Mushroom": (properties) => Mushroom(properties.position),
        },
        forceTileSize: const Size(tileSize, tileSize),
      ),
      interface: GameInterface(),
      player: PlayerHero(
        Vector2(16 * tileSize, 16 * tileSize),
      ),
      showCollisionArea: false,
      cameraConfig: CameraConfig(
        smoothCameraEnabled: false,
        moveOnlyMapArea: true,
        zoom: 2.5,
      ),
      lightingColorGame: Colors.black,
      components: [MyGameController()],
    );
  }
}
