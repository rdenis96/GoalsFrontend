import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final String placeholder;
  final IconData icon;
  final bool isObscure;
  final TextEditingController controller;

  CommonTextField(this.controller, this.placeholder, this.icon, {this.isObscure = false});
  @override
  Widget build(BuildContext context) {
    return TextField(
            controller: controller,
            obscureText: isObscure,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                prefixIcon: Icon(icon),
                hintText: placeholder,
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