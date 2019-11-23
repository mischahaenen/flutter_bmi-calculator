import 'package:bmi_calculator/bmi_card.dart';
import 'package:bmi_calculator/gender.dart';
import 'package:bmi_calculator/gender_icon_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const bottomContainerHight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectGender(Gender.MALE);
                      });
                    },
                    child: new BMICard(
                      color: maleCardColor,
                      child: new GenderIconContent(gender: Gender.MALE),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectGender(Gender.FEMALE);
                      });
                    },
                    child: new BMICard(
                      color: femaleCardColor,
                      child: new GenderIconContent(gender: Gender.FEMALE),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: new BMICard(color: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new BMICard(color: activeCardColor),
                ),
                Expanded(
                  child: new BMICard(color: activeCardColor),
                )
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 15.0),
            width: double.infinity,
            height: bottomContainerHight,
          ),
        ]));
  }

  void selectGender(Gender gender) {
    // Toggle Female Card
    femaleCardColor = gender == Gender.FEMALE ? activeCardColor : inactiveCardColor;
    // Toggle Male Card
    maleCardColor = gender == Gender.MALE ? activeCardColor : inactiveCardColor;
  }
}
