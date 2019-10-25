import 'package:flutter/material.dart';
import 'package:goalsfrontend/screens/authentication/sign_in.dart';
import 'package:goalsfrontend/screens/authentication/sign_up.dart';
import 'package:goalsfrontend/screens/home/widgets/home.dart';
import 'package:goalsfrontend/utils/common/goals_colors.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Goals',
      theme: ThemeData(
        primarySwatch: GoalsColors.MainColor
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => Home(),
        '/login': (context) => SignIn(),
        '/register': (context) => SignUp()
      },
    );
  }
}
