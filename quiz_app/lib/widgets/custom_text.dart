import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String textData;
  final double textFontSize;
  final Color textColor;

  const CustomText(
    this.textData,
    this.textFontSize,
    this.textColor
  );

  @override
  Widget build(BuildContext context) {
    return Text(
      textData,
      style: TextStyle(
        fontSize: textFontSize,
        color: textColor
      ),
    );
  }
}