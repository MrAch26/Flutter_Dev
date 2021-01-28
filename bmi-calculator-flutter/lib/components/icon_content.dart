import 'package:flutter/material.dart';
import '../constants.dart';

class ReusableIconText extends StatelessWidget {
  // const ReusableIconText({Key key}) : super(key: key);

  ReusableIconText({@required this.cardText, this.fontIcon});

  final String cardText;
  final IconData fontIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          fontIcon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          cardText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
