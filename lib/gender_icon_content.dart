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
          size: 60.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender == Gender.FEMALE ? 'FEMALE' : 'MALE',
          style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}
