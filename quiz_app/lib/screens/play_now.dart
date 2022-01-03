import 'package:flutter/material.dart';
import '../widgets/gradient_icon.dart';
import '../widgets/custom_text.dart';

class PlayNow extends StatelessWidget {
  const PlayNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff32167c),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                GradientIcon(
                  Icons.quiz,
                  150.0,
                  LinearGradient(
                    colors: <Color>[
                      Colors.purple,
                      Colors.blue,
                      Colors.red,
                      Colors.yellow,
                      Colors.orange,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                CustomText('Quiz App', 25.0, Color(0xff39ff14)),
              ],
            ),
            const Text(
              'Let\'s Play!',
            ),
          ],
        ),
      ),
    );
  }
}
