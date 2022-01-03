import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 300.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: const Color(0xff6949fd),
          border: Border.all(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: const Center(
          child: Text(
            'Click Me',
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
