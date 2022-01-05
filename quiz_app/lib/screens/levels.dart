import 'package:flutter/material.dart';
import '../reusable_widgets/custom_text.dart';

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
        children: List.generate(10, (index) {
          return Center(
            child: ClipPath(
              clipper: MyPolygon(),
              child: Container(
                color: Colors.red,
                width: 150,
                height: 150,
              ),
            ),
          );
        }),
      ),
    );
  }
}

class MyPolygon extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addPolygon([
      Offset(0, size.height * 1 / 3),
      Offset(size.width / 2, 0),
      Offset(size.width, size.height * 1 / 3),
      Offset(size.width * 4 / 5, size.height),
      Offset(size.width * 1 / 5, size.height),
    ], true);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
