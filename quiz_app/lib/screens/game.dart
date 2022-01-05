import 'package:flutter/material.dart';
import '../reusable_widgets/custom_text.dart';

class Game extends StatelessWidget {
  final int levelNumber;
  const Game({Key? key, required this.levelNumber}) : super(key: key);

  void showAlert(BuildContext context) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Quit Game'),
          content: const Text('Are you sure you want to quit the game'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false),
              child: const Text('OK'),
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
