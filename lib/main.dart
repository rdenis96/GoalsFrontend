import 'package:flutter/material.dart';

import 'screens/authentication/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Goals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignIn()
    );
  }
}
