import 'package:flutter/material.dart';

class PlayNow extends StatelessWidget {
  const PlayNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff291a57),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Play now',
            ),
          ],
        ),
      ),
    );
  }
}