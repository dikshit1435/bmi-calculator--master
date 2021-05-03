import 'package:flutter/material.dart';
import 'package:bmi_calculator/ConstantFile.dart';
class CardDesign extends StatelessWidget {
  final IconData cardIcon;
  final String cardText;
  CardDesign({this.cardIcon,this.cardText});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(cardIcon,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          cardText,
          style: kCardTextStyle,
        )
      ],
    );
  }
}
