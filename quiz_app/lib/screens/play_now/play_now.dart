import 'package:flutter/material.dart';
import './play_now_widgets/play_now_widgets.dart';

class PlayNow extends StatelessWidget {
  const PlayNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff32167c),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            PlayNowTitleIconWidget(),
            PlayNowBodyTitleWidget(),
            PlayNowButtonsWidget()
          ],
        ),
      ),
    );
  }
}
