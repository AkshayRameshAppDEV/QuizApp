import 'package:flutter/material.dart';
import '../../../reusable_widgets/gradient_icon.dart';
import '../../../reusable_widgets/custom_text.dart';

class PlayNowBodyTitleWidget extends StatelessWidget {
  const PlayNowBodyTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomText('Let\'s Play!', 25.0, Colors.white),
        CustomText('Play now and Level up', 20.0, Colors.white),
      ],
    );
  }
}

class PlayNowTitleIconWidget extends StatelessWidget {
  const PlayNowTitleIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        CustomText('Quiz App', 30.0, Color(0xff00fac3)),
      ],
    );
  }
}