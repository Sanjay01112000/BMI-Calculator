import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';
class BottomButton extends StatelessWidget {
  BottomButton({this.title,this.tap});
  final String title;
  final Function tap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        height: kBottomContainerHeight,
        color: kBottomContainerColor,
        child: Center(
          child: Text(title,
            style: kBottomContainerTextStyle,

          ),

        ),

      ),
    );
  }
}

