import 'package:flutter/cupertino.dart';

class DeviceContextSize {
  static double width(BuildContext context ) => MediaQuery.of(context).size.width;
  static double height(BuildContext context ) => MediaQuery.of(context).size.height;
  static Size size(BuildContext context ) => MediaQuery.of(context).size;
  static double widthFromPercentage(BuildContext context, double percentage) => (percentage / 100) * width(context);
  static double heightFromPercentage(BuildContext context, double percentage) => (percentage / 100) * height(context);
  static Size sizeFromPercentage(BuildContext context, double percentageWidth, double percentageHeight) => Size(widthFromPercentage(context, percentageWidth), heightFromPercentage(context, percentageHeight));
}