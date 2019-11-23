import 'package:flutter/cupertino.dart';

class BMICard extends StatelessWidget {
  final Color color;
  final Widget child;

  BMICard({@required this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: this.color),
      child: child,
    );
  }
}
