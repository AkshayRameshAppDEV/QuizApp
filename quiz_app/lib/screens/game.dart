import 'package:flutter/material.dart';
class Game extends StatelessWidget {
  final int levelNumber;
  const Game({Key? key, required this.levelNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Level $levelNumber"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child:  Text('Level $levelNumber'),
        ),
      ),
    );
  }
}