import 'package:flutter/material.dart';
import '../reusable_widgets/custom_text.dart';

class Game extends StatefulWidget {
  final int levelNumber;
  const Game({Key? key, required this.levelNumber}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  Color? optionSelectedColor = const Color(0xff00fac3);
  int currentTappedOption = -1;

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

  void setCurrentTappedIndex(int index) {
    setState(() {
      currentTappedOption = index;
    });
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
        title: CustomText("Level ${widget.levelNumber}", 25.0,
            const Color(0xff00fac3), FontWeight.bold),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomText("1/10", 20.0, Color(0xff00fac3), FontWeight.bold),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: CustomText("What is the 6th planet in the solar system?",
                  25.0, Colors.white, FontWeight.bold),
            ),
            SizedBox(
              width: 360,
              height: 300,
              child: Card(
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
            ),
            Column(
              children: List.generate(4, (index) {
                return GestureDetector(
                  onTap: () => setCurrentTappedIndex(index),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: currentTappedOption == index
                              ? optionSelectedColor
                              : Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: Row(children: [
                        RawMaterialButton(
                          fillColor: const Color(0xff6949fd),
                          onPressed: () {},
                          elevation: 2.0,
                          child: CustomText('0${index + 1}', 15.0, Colors.white,
                              FontWeight.w900),
                          shape: const CircleBorder(),
                        ),
                         CustomText('Jupiter', 15.0, currentTappedOption == index
                              ? Colors.black
                              : Colors.white,
                              FontWeight.bold)
                      ]),
                    ),
                  ),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(80.0),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xff6949fd))),
                    onPressed: () {
                      // Respond to button press
                    },
                    child: const Text("Previous"),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xff6949fd))),
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
