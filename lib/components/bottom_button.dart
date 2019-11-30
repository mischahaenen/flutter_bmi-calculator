import 'package:bmi_calculator/models/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String title;

  BottomButton({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 15.0),
        width: double.infinity,
        height: kBottomContainerHight,
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(child: Text(title, style: kLargeButtonTextStyle)),
      ),
    );
  }
}
