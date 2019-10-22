import 'package:flutter/material.dart';
import 'package:goalsfrontend/utils/common/goals_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  CustomAppBar({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Goals"),
      backgroundColor: GoalsColors.MainColor,
      centerTitle: true
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}