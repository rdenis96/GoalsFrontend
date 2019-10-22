import 'package:flutter/material.dart';
import 'package:goalsfrontend/widgets/appbar/appbar.dart';
import 'package:goalsfrontend/widgets/buttons/submit_button.dart';
import 'package:goalsfrontend/widgets/textfields/common_textfield.dart';

class SignIn extends StatelessWidget {
  final usernameOrEmailController = new TextEditingController();
  final passwordController = new TextEditingController();
  BuildContext _context;

  void onSubmitPressed() {
    Navigator.pushNamed(_context, '/register');
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    return new Scaffold(
        // 1
        appBar: CustomAppBar(),
        body: new Container(
            // decoration: new BoxDecoration(color: Colors.white),
            child: new Center(
                child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.only(top: 150.0)),
            new Padding(
                padding: new EdgeInsets.all(8.0),
                child: new CommonTextField(usernameOrEmailController,
                    "Username/Email here", Icons.person_add)),
            new Padding(
                padding: new EdgeInsets.all(8.0),
                child: new CommonTextField(passwordController, "Password Here",
                    Icons.enhanced_encryption,
                    isObscure: true)),
            new Padding(
                padding:
                    new EdgeInsets.only(top: 25.0, left: 80.0, right: 80.0),
                child: new SubmitButton(onSubmitPressed)),
          ],
        ))));
  }
}
