import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppNavigator{

  static void push(BuildContext context, Widget screen){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> screen));
  }

  static void pushReplace(BuildContext context, Widget screen){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> screen));
  }

  static void pop(BuildContext context){
    Navigator.pop(context);
  }
}