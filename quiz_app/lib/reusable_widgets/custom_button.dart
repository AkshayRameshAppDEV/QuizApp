import 'package:flutter/material.dart';
import 'custom_text.dart';

class CustomButtonWidget extends StatelessWidget {
  final String buttonText;

  const CustomButtonWidget(
    this.buttonText,
  );

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
        child: Center(
          child: CustomText(
            buttonText,
            20.0,
            Colors.white
          ),
        ),
      ),
    );
  }
}
