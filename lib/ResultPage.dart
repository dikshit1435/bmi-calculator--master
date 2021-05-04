import 'package:bmi_calculator/BrainBMI.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/ConstantFile.dart';
import 'package:bmi_calculator/ReusableCard.dart';
import 'package:bmi_calculator/BottomButton.dart';
import 'package:bmi_calculator/BrainBMI.dart';
class ResultPage extends StatelessWidget {
  final String result;
  final String resultText;
  final String resultComment;
  ResultPage({this.result,this.resultText,this.resultComment});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR "),)),
      body: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
    Expanded(
    child: Container(
    padding: EdgeInsets.all(15.0),
    alignment: Alignment.bottomLeft,
    child: Text(
    'Your Result',
    style: kTitleTextStyle,
    ),
    ),
    ),
    Expanded(
    flex: 5,
    child:  ReUsable(
    colour: kInactiveColor, 
    reChild: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
    Text(
      resultText,
    style: kResultTextStyle,
    ),
    Text(
    result,
    style: kBMITextStyle,
    ),
    Text(
    resultComment,
    textAlign: TextAlign.center,
    style: kBodyTextStyle,
    ),
    ],
    ),
    ),
    ),
    BottomCard(
    buttonText: 'RE-CALCULATE',
    onClick: () {
    Navigator.pop(context);
    },
    )
    ],
    ),


    );
  }
}

