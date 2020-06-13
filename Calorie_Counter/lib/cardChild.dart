import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({this.colour,this.cardChild});

final Widget cardChild;
final Color colour;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
        height: 120.0,
        width: double.infinity,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        )
    );
  }
}
