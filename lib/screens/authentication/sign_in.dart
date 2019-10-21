import 'package:flutter/material.dart';
import 'package:goalsfrontend/widgets/appbar/index.dart';
import 'package:goalsfrontend/widgets/common_textfield/index.dart';

class SignIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold( // 1
      appBar: CustomAppBar(),
      body: new Container(
      // decoration: new BoxDecoration(color: Colors.white),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Padding(
                padding: new EdgeInsets.all(8.0),
                child: new CommonTextField("Username here", Icons.person_add)
              ),
              new Padding(
                padding: new EdgeInsets.all(8.0),
                child: new CommonTextField("Password Here", Icons.enhanced_encryption, isObscure: true)
              )
            ],
          )
        )
      )
    );
  }
}