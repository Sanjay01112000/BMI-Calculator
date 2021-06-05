import 'package:bmi_calculator/Components/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/Components/reusable_container.dart';

class Result extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              'BMI CALCULATOR',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
        ),
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child:Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(15.0),
              child: Text(
                  'Your Result',

                  style: kTitleTextStyle
              ),
            ),
            ),
            Expanded(
              flex: 5,
              child: Reusable_Container(
                colour: kActiveCardColor ,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Normal',
                    style:kResultBodyTextStyle,
                    ),
                    Text(
                      '180',
                          style:kNumberBodyTextStyle,
                    ),
                    Text(

                      "Don't worry, Your are healthy Be Happy",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22.0,
                      ),
                    ),

                  ],
                ),
              ),
            ),
   // Navigator.pop(context);
   //         'RE-CALCULATE YOUR BMI ',
            BottomButton(
              title: 'RE-CALCULATE YOUR BMI ' ,
              tap: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
    );
  }
}
