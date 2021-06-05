import 'package:flutter/material.dart';


class Reusable_Container extends StatelessWidget {
  Reusable_Container({@required this.colour,this.cardChild,this.updateGender});
  final Color colour;
  final Widget cardChild;
  final Function updateGender ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: updateGender,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}