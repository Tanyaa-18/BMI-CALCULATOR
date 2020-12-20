import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

// const labelTextStyle = TextStyle(
//   fontSize: 18.0,
//   fontWeight: FontWeight.bold,
//   color: Color(0xFF8D8E98),
// );
class IconContent extends StatelessWidget {

  IconContent({this.icon, this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          //FontAwesomeIcons.mars,
          size:60.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          //'MALE',
            label,
            style: labelTextStyle,
        )
      ],

    );
  }
}