import 'package:flutter/material.dart';
import 'package:flutter_game/game.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Game Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const Game(),
      debugShowCheckedModeBanner: false,
    );
  }
}
