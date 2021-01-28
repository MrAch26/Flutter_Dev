import '../constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.onTap, this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(top: 5),
        child: Text(
          buttonTitle,
          style: kBigTextStyle2,
          textAlign: TextAlign.center,
        ),
        margin: EdgeInsets.only(top: 10),
        color: kbottomContainerColor,
        width: double.infinity,
        height: kbottomContainerheight,
      ),
    );
  }
}
