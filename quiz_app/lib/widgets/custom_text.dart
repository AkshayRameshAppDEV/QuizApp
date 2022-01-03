import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String textData;

  const CustomText(
    this.textData,
  );

  @override
  Widget build(BuildContext context) {
    return Text(
      textData,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}