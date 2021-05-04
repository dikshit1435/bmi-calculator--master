import 'dart:math';

import 'package:flutter/material.dart';
class AppBrain{
  final double height;
  final int weight;
   double _result;
  AppBrain({this.weight,this.height});


  String calculate(){
    _result = weight/pow(height*0.3048, 2);
    return _result.toStringAsFixed(1);
  }
  String getResult(){
    if(_result>=25)
      {
        return 'OverWeight';
      }
    else if(_result>=18){
    return 'Normal';
    }
    else{
      return'Weak';
    }
  }
  String getComment(){
    if(_result>=25)
    {
      return 'Need to be Workout Please start Running or gyming ';
    }
    else if(_result>=18){
      return 'Healthy Body You doing great ';
    }
    else{
      return'Please take some Healthy food Your Body is weak';
    }
  }






}