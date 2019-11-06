import 'package:flutter/material.dart';
import 'package:goalsfrontend/utils/common/constants/routes_constants.dart';
import 'package:goalsfrontend/utils/common/route_forward.dart';

class AppBarNavigationDrawer extends StatefulWidget {
  @override
  _AppBarNavigationDrawerState createState() => _AppBarNavigationDrawerState();
}

class _AppBarNavigationDrawerState extends State<AppBarNavigationDrawer> {

  void forwardSignInPage(){
    RouteForward.popAndPush(context, RoutesConstants.signIn);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            accountEmail: Text("Akram.aic193@Gmail.com"),
            accountName: Text("Akram Chauhan"),
            currentAccountPicture: CircleAvatar(
              child: Text("AC"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {},
          ),
          Divider(color: Colors.black, height: .6),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text("Categories"),
            onTap: () {},
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
