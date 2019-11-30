import 'package:flutter/cupertino.dart';

class BMICard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onPressed;

  BMICard({@required this.color, this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: this.color),
        child: child,
      ),
    );
  }
}
