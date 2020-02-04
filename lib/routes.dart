import 'package:flutter/material.dart';
import 'package:goalsfrontend/screens/authentication/sign_in.dart';
import 'package:goalsfrontend/screens/authentication/sign_up.dart';
import 'package:goalsfrontend/screens/home/home.dart';
import 'package:goalsfrontend/screens/settings/settings_screen.dart';
import 'package:goalsfrontend/utils/common/constants/routes_constants.dart';
import 'package:goalsfrontend/utils/common/constants/goals_colors.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Goals',
      theme: ThemeData(primarySwatch: GoalsColors.materialMainColor),
      initialRoute: RoutesConstants.home,
      routes: {
        RoutesConstants.home: (context) => Home(),
        RoutesConstants.signIn: (context) => SignIn(),
        RoutesConstants.signUp: (context) => SignUp(),
        RoutesConstants.settings: (context) => SettingsScreen()
      },
    );
  }
}
