import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/gender.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderIconContent extends StatelessWidget {
  final Gender gender;

  GenderIconContent({@required this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          gender == Gender.FEMALE ? FontAwesomeIcons.venus : FontAwesomeIcons.mars,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender == Gender.FEMALE ? 'FEMALE' : 'MALE',
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
