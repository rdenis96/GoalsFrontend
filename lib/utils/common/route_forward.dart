import 'package:flutter/material.dart';

class RouteForward {
  static void push(BuildContext context, String route){
    Navigator.pushNamed(context, route);
  }
  static void popAndPush(BuildContext context, String route){
    Navigator.popAndPushNamed(context, route);
  }
  static void pushReplacement(BuildContext context, String route){
    Navigator.pushReplacementNamed(context, route);
  }
}