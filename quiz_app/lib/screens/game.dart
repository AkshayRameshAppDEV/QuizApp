import 'package:flutter/material.dart';
import '../reusable_widgets/custom_text.dart';

class Game extends StatelessWidget {
  final int levelNumber;
  const Game({Key? key, required this.levelNumber}) : super(key: key);

  void showAlert(BuildContext context) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: const Color(0xff6949fd),
          title: const CustomText('Quit Game', 15.0, Colors.white, FontWeight.bold),
          content: const CustomText('Are you sure you want to quit the game?', 15.0, Colors.white, FontWeight.normal),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const CustomText("Cancel", 15.0, Color(0xff00fac3),
            FontWeight.bold),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false),
              child: const CustomText("OK", 15.0, Colors.red,
            FontWeight.bold),
            ),
          ],
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff32167c),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff32167c),
        elevation: 0,
        actions: [
          ElevatedButton(
            onPressed: () => showAlert(context),
            child: const Icon(Icons.dangerous_outlined, color: Colors.white),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              primary: Colors.red, // <-- Button color
            ),
          ),
        ],
        title: CustomText("Level $levelNumber", 25.0, const Color(0xff00fac3),
            FontWeight.bold),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Level $levelNumber'),
        ),
      ),
    );
  }
}
