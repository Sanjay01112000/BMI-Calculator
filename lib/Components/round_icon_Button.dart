import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';
class RoundIconButton extends StatelessWidget {
  RoundIconButton({
    // this.myelevation,
    this.onPressed,
    this.backgroundColor,
    this.icon
  });

  final Color backgroundColor;
  final Function onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return  RawMaterialButton(
      onPressed: onPressed,
      fillColor: backgroundColor,
      child:Icon(icon),
      constraints: kSizeConstraints,
      shape: CircleBorder(),

    );
  }
}

