import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundIconButton({this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      shape: CircleBorder(),
      constraints: BoxConstraints(minWidth: 56.0, minHeight: 56.0),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon),
      onPressed: onPressed,
    );
  }
}
