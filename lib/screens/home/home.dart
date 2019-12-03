import 'package:flutter/material.dart';
import 'package:goalsfrontend/screens/home/widgets/home_post.dart';
import 'package:goalsfrontend/widgets/appbar/appbar.dart';
import 'package:goalsfrontend/widgets/appbar/constants/app_bar_titles.dart';
import 'package:goalsfrontend/widgets/appbar/enums/app_bar_type_enum.dart';
import 'package:goalsfrontend/widgets/appbar/widgets/app_bar_drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CustomAppBar(AppBarType.Home, AppBarTitles.home),
      endDrawer: AppBarNavigationDrawer(),
      body: new Container(
          child: ListView(
        children: <Widget>[
          HomePost(),
        ],
      )),
    );
  }
}
