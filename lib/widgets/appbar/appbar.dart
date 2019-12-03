import 'package:flutter/material.dart';
import 'package:goalsfrontend/utils/common/constants/goals_colors.dart';
import 'package:goalsfrontend/widgets/appbar/enums/app_bar_type_enum.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBarType type;
  final String pageTitle;

  CustomAppBar(this.type, this.pageTitle, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AppBarType.Common:
        return AppBar(
            title: Text(pageTitle),
            backgroundColor: GoalsColors.materialMainColor,
            centerTitle: true);
        break;
      case AppBarType.Home:
      default:
        return AppBar(
            title: Text(pageTitle),
            backgroundColor: GoalsColors.materialMainColor,
            leading: IconButton(
              icon: Icon(Icons.add_circle),
              onPressed: () {
                //to implement action
              },
            ),
            centerTitle: true);
        break;
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
