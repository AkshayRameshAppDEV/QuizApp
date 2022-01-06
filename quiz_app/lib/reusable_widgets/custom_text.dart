import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String textData;
  final double textFontSize;
  final Color? textColor;
  final FontWeight textFontWeight;

  const CustomText(
    this.textData,
    this.textFontSize,
    this.textColor,
    this.textFontWeight
  );

  @override
  Widget build(BuildContext context) {
    return Text(
      textData,
      style: GoogleFonts.nunito(
        textStyle: TextStyle(color: textColor),
        fontSize: textFontSize,
        fontWeight: textFontWeight
  ),
    );
  }
}