import 'package:flutter/material.dart';

class RouteForward {
  static void push(BuildContext context, String route){
    Navigator.pushNamed(context, route);
  }
}