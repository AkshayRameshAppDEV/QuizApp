import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      style: GoogleFonts.nunito(
        textStyle: const TextStyle(color: Colors.blue),
        fontSize: textFontSize,
        fontWeight: FontWeight.bold
  ),
    );
  }
}