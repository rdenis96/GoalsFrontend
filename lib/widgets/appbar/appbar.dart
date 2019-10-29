import 'package:flutter/material.dart';
import 'package:goalsfrontend/utils/common/goals_colors.dart';
import 'package:goalsfrontend/widgets/appbar/enums/app_bar_type_enum.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  AppBarType _type;
  String _pageTitle;

  CustomAppBar(AppBarType type, String pageTitle, {Key key}) : super(key: key) {
    _type = type;
    _pageTitle = pageTitle;
  }
  @override
  Widget build(BuildContext context) {
    switch (_type) {
      case AppBarType.Common:
        return AppBar(
            title: Text(_pageTitle),
            backgroundColor: GoalsColors.MainColor,
            centerTitle: true);
        break;
      case AppBarType.Home:
        return AppBar(
            title: Text(_pageTitle),
            backgroundColor: GoalsColors.MainColor,
            centerTitle: true);
        break;
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
