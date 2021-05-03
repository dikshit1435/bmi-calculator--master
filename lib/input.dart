import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ReusableCard.dart';
import 'ReusableCardData.dart';
import 'package:bmi_calculator/ConstantFile.dart';
import 'RoundIconWidget.dart';

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;
 int height =150;
 int weight = 30;
 int age = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text('BMI CALCULATOR'),
        )),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReUsable(
                    onpress: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    colour: selectedGender == GenderType.male
                        ? kActiveColor
                        : kInactiveColor,
                    reChild: CardDesign(
                      cardIcon: FontAwesomeIcons.mars,
                      cardText: "Male",
                    ),
                  ),
                ),
                Expanded(
                    child: ReUsable(
                  onpress: () {
                    setState(() {
                      selectedGender = GenderType.female;
                    });
                  },
                  colour: selectedGender == GenderType.female
                      ? kActiveColor
                      : kInactiveColor,
                  reChild: CardDesign(
                    cardIcon: FontAwesomeIcons.venus,
                    cardText: "Female",
                  ),
                )),
              ],
            )),
            Expanded(child: ReUsable(colour: kContainerColor,reChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("HEIGHT",style: kCardTextStyle,),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,

                  children: [
                    Text(height.toString(),style: kCardValuesStyle,),
                    Text("CM")
                  ],
                ),
                SliderTheme( data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.white ,
                  inactiveTrackColor: Colors.black12,
                  overlayColor: Color(0x15EB1555),
                  thumbColor: kBottomContainerColor,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                ),
                  child: Slider(value: height.roundToDouble(),
                  min: 100,
                  max: 200,


                  onChanged: (newHeight){
                     setState(() {
                       height=newHeight.round();
                     });
                  },),
                )
              ],
            ),)),
            Expanded(
                child: Row(
              children: [
                Expanded(child: ReUsable(colour: kContainerColor,reChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text("WEIGHT",style: kCardTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(weight.toString(),style: kCardValuesStyle,),
                        SizedBox(
                          width: 2,
                        ),
                        Text("KG",style: kCardTextStyle,),
                      ],

                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {

                                weight++;
                              });
                            }),
                        SizedBox(
                          width: 10,
                        ),
                        RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                if(weight>4)
                                weight--;
                              });
                            }),

                      ],
                    )



                  ],
                ),),
                ),
                Expanded(child: ReUsable(colour: kContainerColor,reChild: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [

    Text("AGE",style: kCardTextStyle,),

    Text(age.toString(),style: kCardValuesStyle,),

    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    RoundIconButton(
    icon: FontAwesomeIcons.plus,
    onPressed: () {
    setState(() {
      if(age<128)
    age++;
    });
    }),
    SizedBox(
    width: 10,
    ),
    RoundIconButton(
    icon: FontAwesomeIcons.minus,
    onPressed: () {
    setState(() {
    if(age>1)
    age--;
    });
    }),

    ],
    )



    ],
    ),),)
              ],
            )),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              color:  kBottomContainerColor,
              height: kBottomContainerHeight,
            )
          ],
        ));
  }
}
