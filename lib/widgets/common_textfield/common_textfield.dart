import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  String _placeholder;
  IconData _icon;
  bool _isObscure;

  CommonTextField(String placeholder, IconData icon, {bool isObscure = false}){
    _placeholder = placeholder;
    _icon = icon;
    _isObscure = isObscure;
  }
  TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
            controller: _textFieldController,
            obscureText: _isObscure,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                prefixIcon: Icon(_icon),
                hintText: _placeholder,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                    borderRadius: BorderRadius.circular(25.0)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 32.0),
                    borderRadius: BorderRadius.circular(25.0))
            ),
      );
  }
}