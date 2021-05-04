import 'package:flutter/material.dart';
import 'package:bmi_calculator/ConstantFile.dart';
class BottomCard extends StatelessWidget {
  final String buttonText;
  final Function onClick;
  BottomCard({this.buttonText,this.onClick});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        alignment: Alignment.center,
        child: Text( buttonText,style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,

        ),),
        width: double.infinity,
        color:  kBottomContainerColor,
        height: kBottomContainerHeight,
      ),
    );
  }
}
