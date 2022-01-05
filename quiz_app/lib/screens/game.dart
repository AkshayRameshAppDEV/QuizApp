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
        title:
            const CustomText('Quit Game', 15.0, Colors.white, FontWeight.bold),
        content: const CustomText('Are you sure you want to quit the game?',
            15.0, Colors.white, FontWeight.normal),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const CustomText(
                "Cancel", 15.0, Color(0xff00fac3), FontWeight.bold),
          ),
          TextButton(
            onPressed: () => Navigator.of(context)
                .pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false),
            child: const CustomText("OK", 15.0, Colors.red, FontWeight.bold),
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const CustomText("1/10", 25.0, Color(0xff00fac3), FontWeight.bold),
            const CustomText("What is the 6th planet in the solar system?",
                25.0, Colors.white, FontWeight.bold),
            Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                'https://images.unsplash.com/photo-1614730321146-b6fa6a46bcb4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: const EdgeInsets.all(10),
            ),
            Column(
              children: List.generate(4, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: Colors.white,
                      child: Text('${index + 1}'),
                      padding: const EdgeInsets.all(15.0),
                      shape: const CircleBorder(),
                    ),
                    const Text('Entry A')
                  ]),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    child: const Text("Previous"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    child: const Text("Next"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
