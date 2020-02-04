import 'package:flutter/material.dart';
import 'package:goalsfrontend/utils/common/constants/routes_constants.dart';
import 'package:goalsfrontend/utils/common/route_forward.dart';

class AppBarNavigationDrawer extends StatefulWidget {
  @override
  _AppBarNavigationDrawerState createState() => _AppBarNavigationDrawerState();
}

class _AppBarNavigationDrawerState extends State<AppBarNavigationDrawer> {
  void forwardSignInPage() {
    RouteForward.popAndPush(context, RoutesConstants.signIn);
  }

  void forwardSettingsPage(){
    RouteForward.popAndPush(context, RoutesConstants.settings);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            accountEmail: Text("rdenis9616@gmail.com"),
            accountName: Text("Denis Radu"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://img.favpng.com/12/15/8/ninja-computer-programming-learning-study-skills-png-favpng-5AG41F2Kzg1ZR8Fi1JBrfmrtV.jpg"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text("Categories"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text("Activity"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorites"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: forwardSettingsPage,
          ),
          Divider(color: Colors.black, height: .6),
          ListTile(
            leading: Icon(Icons.rate_review),
            title: Text("Rate and Review"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Sign In"),
            onTap: forwardSignInPage,
          ),
        ],
      ),
    );
  }
}
