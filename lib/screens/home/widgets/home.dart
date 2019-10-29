import 'package:flutter/material.dart';
import 'package:goalsfrontend/widgets/appbar/appbar.dart';
import 'package:goalsfrontend/widgets/appbar/constants/app_bar_titles.dart';
import 'package:goalsfrontend/widgets/appbar/enums/app_bar_type_enum.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: CustomAppBar(AppBarType.Home, AppBarTitles.home),
      body: new Container(
        
      ),
    );
  }
}