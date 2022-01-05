import 'package:flutter/material.dart';
import '../reusable_widgets/custom_text.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

class Levels extends StatelessWidget {
  const Levels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff32167c),
      appBar: AppBar(
        backgroundColor: const Color(0xff32167c),
        elevation: 0,
        title: const CustomText(
            "Levels", 25.0, Color(0xff00fac3), FontWeight.bold),
        leading: ElevatedButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Icon(Icons.arrow_back, color: Colors.white),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            primary: const Color(0xff6949fd), // <-- Button color
          ),
        ),
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(8, (index) {
          return Center(
            child: Container(
                padding: const EdgeInsets.all(30.0),
                child: ClipPolygon(
                  sides: 5,
                  boxShadows: [
                    PolygonBoxShadow(color: Colors.black, elevation: 7.0),
                    PolygonBoxShadow(color: Colors.black, elevation: 5.0)
                  ],
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2019/08/11/02/52/planet-4398012_1280.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CustomText(
                            'Level', 25.0, Colors.white, FontWeight.bold),
                        CustomText('${index + 1}', 20.0, Colors.white,
                            FontWeight.bold),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.star,
                              size: 20,
                              color:
                                  Colors.yellow, //The color which you want set.
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                              color:
                                  Colors.yellow, //The color which you want set.
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                              color:
                                  Colors.yellow, //The color which you want set.
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                              color:
                                  Colors.yellow, //The color which you want set.
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                              color:
                                  Colors.yellow, //The color which you want set.
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          );
        }),
      ),
    );
  }
}
