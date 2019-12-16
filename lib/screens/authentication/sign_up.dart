import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:goalsfrontend/utils/common/callbacks_definitions.dart';
import 'package:goalsfrontend/utils/common/helpers/build_context_extensions.dart';
import 'package:goalsfrontend/widgets/appbar/appbar.dart';
import 'package:goalsfrontend/widgets/appbar/constants/app_bar_titles.dart';
import 'package:goalsfrontend/widgets/appbar/enums/app_bar_type_enum.dart';
import 'package:goalsfrontend/widgets/buttons/submit_button.dart';
import 'package:goalsfrontend/widgets/textfields/common_textfield.dart';

class SignUp extends StatelessWidget {
  final usernameController = new TextEditingController();
  final emailController = new TextEditingController();
  final passwordController = new TextEditingController();
  final confirmPasswordController = new TextEditingController();

  void submit(BuildContext context) {
    print("Sign Up submited!");
  }

  @override
  Widget build(BuildContext context) {
    OnPressedSubmit submitSignUp = submit;

    return new Scaffold(
        appBar: CustomAppBar(AppBarType.Common, AppBarTitles.register),
        body: new Container(
            child: new Center(
                child: new Column(
          children: <Widget>[
            new Padding(
                padding: new EdgeInsets.only(top: context.heightFromPercentage(5), bottom: context.heightFromPercentage(5)),
                child: new Text(
                  "Sign Up",
                  style: TextStyle(fontSize: context.heightFromPercentage(4)),
                )),
            new Padding(
                padding: new EdgeInsets.only(
                    top: context.heightFromPercentage(2),
                    left: context.widthFromPercentage(6),
                    right: context.widthFromPercentage(6)),
                child: new CommonTextField(
                    usernameController, "Your Username", Icons.person_add)),
            new Padding(
                padding: new EdgeInsets.only(
                    top: context.heightFromPercentage(2),
                    left: context.widthFromPercentage(6),
                    right: context.widthFromPercentage(6)),
                child: new CommonTextField(
                    emailController, "Your Email", Icons.email)),
            new Padding(
                padding: new EdgeInsets.only(
                    top: context.heightFromPercentage(2),
                    left: context.widthFromPercentage(6),
                    right: context.widthFromPercentage(6)),
                child: new CommonTextField(passwordController, "Your Password",
                    Icons.enhanced_encryption,
                    isObscure: true)),
            new Padding(
                padding: new EdgeInsets.only(
                    top: context.heightFromPercentage(2),
                    left: context.widthFromPercentage(6),
                    right: context.widthFromPercentage(6)),
                child: new CommonTextField(confirmPasswordController,
                    "Confirm Password", Icons.enhanced_encryption,
                    isObscure: true)),
            new Padding(
                padding: new EdgeInsets.only(
                    top: context.heightFromPercentage(3),
                    left: context.widthFromPercentage(25),
                    right: context.widthFromPercentage(25)),
                child: new SubmitButton(context, submitSignUp))
          ],
        ))));
  }
}
