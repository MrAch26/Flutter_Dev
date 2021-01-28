import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // const ReusableCard({Key key}) : super(key: key);

  ReusableCard({@required this.colour, this.cardChild, this.gestureF});

  final Color colour;
  final Widget cardChild;
  final Function gestureF;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureF,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
      ),
    );
  }

  void ok() {
    print('allezzz');
  }
}
