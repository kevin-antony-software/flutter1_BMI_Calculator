import 'package:flutter/material.dart';

import 'constants.dart';

class CardWithIcon extends StatelessWidget {
  CardWithIcon({required this.myIcon, required this.myText});

  final IconData myIcon;
  final String myText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          myIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          myText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
