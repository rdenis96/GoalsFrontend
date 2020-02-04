import 'package:flutter/cupertino.dart';

extension DeviceSize on BuildContext{
  double width() => MediaQuery.of(this).size.width;
  double height() => MediaQuery.of(this).size.height;
  Size size() => MediaQuery.of(this).size;
  double widthFromPercentage(double percentage) => (percentage / 100) * width();
  double heightFromPercentage(double percentage) => (percentage / 100) * height();
  Size sizeFromPercentage(double percentageWidth, double percentageHeight) => Size(widthFromPercentage(percentageWidth), heightFromPercentage(percentageHeight));
}