import 'package:flutter/material.dart';
import 'package:goalsfrontend/utils/common/goals_colors.dart';
import 'package:goalsfrontend/widgets/appbar/enums/app_bar_type_enum.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  AppBarType _type;

  CustomAppBar(AppBarType type, {Key key}) : super(key: key) {
    _type = type;
  }
  @override
  Widget build(BuildContext context) {
    switch (_type) {
      case AppBarType.Common:
        return AppBar(
            title: Text("Goals"),
            backgroundColor: GoalsColors.MainColor,
            centerTitle: true);
        break;
      case AppBarType.Home:
        return AppBar(
            title: Text("Life Goals"),
            backgroundColor: GoalsColors.MainColor,
            centerTitle: true);
        break;
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
