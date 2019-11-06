import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:goalsfrontend/utils/common/callbacks_definitions.dart';
import 'package:goalsfrontend/utils/common/constants/routes_constants.dart';
import 'package:goalsfrontend/utils/common/route_forward.dart';
import 'package:goalsfrontend/widgets/appbar/appbar.dart';
import 'package:goalsfrontend/widgets/appbar/constants/app_bar_titles.dart';
import 'package:goalsfrontend/widgets/appbar/enums/app_bar_type_enum.dart';
import 'package:goalsfrontend/widgets/buttons/submit_button.dart';
import 'package:goalsfrontend/widgets/textfields/common_textfield.dart';


class SignIn extends StatelessWidget {
  final usernameOrEmailController = new TextEditingController();
  final passwordController = new TextEditingController();
  
  void submit(BuildContext context) {
    print("Sign In submited!");
  }

  @override
  Widget build(BuildContext context) {
    OnPressedSubmit submitSignIn = submit;

    return new Scaffold(
        appBar: CustomAppBar(AppBarType.Common, AppBarTitles.login),
        body: new Container(
            child: new Center(
                child: new Column(
          children: <Widget>[
            new Padding(
                padding: new EdgeInsets.only(top: 60.0, bottom: 50.0),
                child: new Text(
                  "Sign In",
                  style: TextStyle(fontSize: 36.0),
                )),
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
                child: new SubmitButton(context, submitSignIn)),
            new Padding(
                padding:
                    new EdgeInsets.only(top: 25.0, left: 80.0, right: 80.0),
                child: new Text("OR")),
            new Padding(
                padding:
                    new EdgeInsets.only(top: 25.0, left: 80.0, right: 80.0),
                child: new GoogleSignInButton(
                    onPressed: () {}, borderRadius: 18.0)),
            new Padding(
                padding: new EdgeInsets.only(
                    top: 10.0, left: 40.0, right: 40.0, bottom: 100.0),
                child: new FacebookSignInButton(
                    onPressed: () {}, borderRadius: 18.0)),
            new Padding(
                padding: new EdgeInsets.only(bottom: 10.0),
                child: new InkWell(
                    child: new Text("Don't have an account? Register here!"),
                    onTap: () =>
                        RouteForward.push(context, RoutesConstants.signUp)))
          ],
        ))));
  }
}
