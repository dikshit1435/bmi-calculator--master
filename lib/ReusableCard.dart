import 'package:flutter/material.dart';
class ReUsable extends StatelessWidget {
  final Color colour ;
  final Function onpress;
  final Widget reChild;
  ReUsable({@required this.colour,this.reChild,this.onpress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
        child:Container(
          child: reChild,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10),
          ),
        ));
  }
}
