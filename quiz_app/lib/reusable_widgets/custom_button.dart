import 'package:flutter/material.dart';
import 'custom_text.dart';

class CustomButtonWidget extends StatelessWidget {
  final String buttonText;
  final double fontSize;
  final Color textColor;
  final Border? borderProperties;
  final Color buttonBackgroundcolor;
  final double buttonWidth;
  final double buttonHeight;
  final VoidCallback customFunc;
  final FontWeight textFontWeight;

  const CustomButtonWidget(
      this.buttonText,
      this.fontSize,
      this.textColor,
      this.borderProperties,
      this.buttonBackgroundcolor,
      this.buttonWidth,
      this.buttonHeight,
      this.customFunc,
      this.textFontWeight
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: customFunc,
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        decoration: BoxDecoration(
          color: buttonBackgroundcolor,
          border: borderProperties,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: CustomText(buttonText, fontSize, textColor, textFontWeight),
        ),
      ),
    );
  }
}
