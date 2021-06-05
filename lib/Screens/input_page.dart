import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/Components/reusable_container.dart';
import '../Components/icon_content.dart';
import 'package:bmi_calculator/constant.dart';
import '../Components/round_icon_Button.dart';
import 'result.dart';
import 'package:bmi_calculator/Components/bottom_button.dart';

enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontWeight: FontWeight.w900,
          ),
        )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusable_Container(
                    updateGender: () {
                      setState(() {
                        selectedGender = Gender.Male;
                      });
                    },
                    colour: selectedGender == Gender.Male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContentWidget(
                        iconContent: FontAwesomeIcons.mars,
                        textContent: 'MALE'),
                  ),
                ),
                Expanded(
                  child: Reusable_Container(
                    updateGender: () {
                      setState(() {
                        selectedGender = Gender.Female;
                      });
                    },
                    colour: selectedGender == Gender.Female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContentWidget(
                        iconContent: FontAwesomeIcons.venus,
                        textContent: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reusable_Container(
              colour: kActiveCardColor,
              cardChild: Column(
                // crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  //   to align both text of different size at baseline
                  //   you need specify baseline property to it but to use baseline
                  // property you need to ass textbaseline property as well
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Color(0xFFFFFFFF),
                        inactiveTrackColor: Color(0xFF8D8E98),
                        //overlay is rounded area that get reflected when we click on slider thumb
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 30.0,
                        ),
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 14.0,
                          // elevation: 100.0,
                        ),
                        overlayColor: Color(0x29EB1555),
                        thumbColor: Color(0xFFEB1555)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusable_Container(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  weight -= 1;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                              backgroundColor: Color(0xFF4C4F5E),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  weight += 1;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                              backgroundColor: Color(0xFF4C4F5E),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable_Container(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'age',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  age -= 1;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                              backgroundColor: Color(0xFF4C4F5E),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  age += 1;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                              backgroundColor: Color(0xFF4C4F5E),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),



              ],
            ),
          ),
          BottomButton(
            title: 'CALCULATE',
            tap: (){
              Navigator.pushNamed(context, '/first');
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return Result();
              // },
              // ),
              // );
            },
          )

        ],
      ),
    );
  }
}
