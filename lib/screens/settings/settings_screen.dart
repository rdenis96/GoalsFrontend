import 'package:flutter/material.dart';
import 'package:goalsfrontend/widgets/appbar/appbar.dart';
import 'package:goalsfrontend/widgets/appbar/constants/app_bar_titles.dart';
import 'package:goalsfrontend/widgets/appbar/enums/app_bar_type_enum.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new CustomAppBar(AppBarType.Common, AppBarTitles.settings),
        body: new Container(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Profile"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.lock),
                title: Text("Privacy"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notifications"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {},
              ),
              Divider(color: Colors.black, height: .6),
              ListTile(
                leading: Icon(Icons.help),
                title: Text("Help"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.description),
                title: Text("About"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Sign Out"),
                onTap: (){},
              ),
            ],
          )
        ));
  }
}
