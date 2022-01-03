import 'package:flutter/material.dart';

class PlayNow extends StatelessWidget {
  const PlayNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff32167c),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Icon',
            ),
            Text(
              'Quiz App',
            ),
            Text(
              'Let\'s Play!',
            ),
            Text(
              'Play Now and Level Up',
            ),
            Text(
              'Play now',
            ),
            Text(
              'About',
            ),
          ],
        ),
      ),
    );
  }
}