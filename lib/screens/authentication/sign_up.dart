import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:goalsfrontend/widgets/appbar/appbar.dart';
import 'package:goalsfrontend/widgets/appbar/enums/app_bar_type_enum.dart';
import 'package:goalsfrontend/widgets/buttons/submit_button.dart';
import 'package:goalsfrontend/widgets/textfields/common_textfield.dart';

class SignUp extends StatelessWidget {
  final usernameController = new TextEditingController();
  final emailController = new TextEditingController();
  final passwordController = new TextEditingController();
  final confirmPasswordController = new TextEditingController();

  BuildContext _context;

  void onSubmitPressed() {
    Navigator.pushNamed(_context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    return new Scaffold(
        appBar: CustomAppBar(AppBarType.Common),
        body: new Container(
            child: new Center(
                child: new Column(
          children: <Widget>[
            new Padding(
                padding: new EdgeInsets.only(top: 60.0, bottom: 50.0),
                child: new Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 36.0),
                )),
            new Padding(
                padding: new EdgeInsets.all(8.0),
                child: new CommonTextField(
                    usernameController, "Your Username", Icons.person_add)),
            new Padding(
                padding: new EdgeInsets.all(8.0),
                child: new CommonTextField(
                    emailController, "Your Email", Icons.email)),
            new Padding(
                padding: new EdgeInsets.all(8.0),
                child: new CommonTextField(passwordController, "Your Password",
                    Icons.enhanced_encryption,
                    isObscure: true)),
            new Padding(
                padding: new EdgeInsets.all(8.0),
                child: new CommonTextField(confirmPasswordController,
                    "Confirm Password", Icons.enhanced_encryption,
                    isObscure: true)),
            new Padding(
                padding:
                    new EdgeInsets.only(top: 25.0, left: 80.0, right: 80.0),
                child: new SubmitButton(onSubmitPressed))
          ],
        ))));
  }
}
