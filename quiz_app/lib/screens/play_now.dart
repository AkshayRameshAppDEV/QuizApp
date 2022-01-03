import 'package:flutter/material.dart';
import '../widgets/gradient_icon.dart';

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
            GradientIcon(
              Icons.quiz,
              100.0,
              LinearGradient(
                colors: <Color>[
                  Colors.red,
                  Colors.yellow,
                  Colors.blue,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
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
          ],
        ),
      ),
    );
  }
}
