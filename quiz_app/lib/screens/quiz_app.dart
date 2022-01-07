import 'package:flutter/material.dart';
import 'play_now/play_now.dart';
import 'levels/levels.dart';
import './game.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const PlayNow(),
        routes: <String, WidgetBuilder>{
          '/levels': (BuildContext context) =>  const Levels(),
          '/game': (BuildContext context) => const Game(levelNumber: 1),
        });
  }
}
