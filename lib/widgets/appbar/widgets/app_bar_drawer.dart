import 'package:flutter/material.dart';

class AppBarNavigationDrawer extends StatefulWidget {
  @override
  _AppBarNavigationDrawerState createState() => _AppBarNavigationDrawerState();
}

class _AppBarNavigationDrawerState extends State<AppBarNavigationDrawer> {
  BuildContext _context;
  void redirectToSignIn() {
    Navigator.pushNamed(_context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    _context = context;

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
          ListTile(
            leading: Icon(Icons.add_to_photos),
            title: Text("Add Items"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("About Us"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("Share with Friends"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.rate_review),
            title: Text("Rate and Review"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.flag),
            title: Text("Privacy Policy"),
            onTap: () {},
          ),
          Divider(color: Colors.black, height: .6),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Sign In"),
            onTap: () {redirectToSignIn();},
          ),
        ],
      ),
    );
  }
}
