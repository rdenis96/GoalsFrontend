import 'package:flutter/material.dart';
import 'package:goalsfrontend/utils/common/goals_colors.dart';

class SubmitButton extends StatelessWidget {
  Function _onPressed;
  SubmitButton(Function onPressedMethod) {
    _onPressed = onPressedMethod;
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      width: double.infinity,
      child: new RaisedButton(
        padding: const EdgeInsets.all(8.0),
        textColor: Colors.white,
        color: GoalsColors.MainColor,
        onPressed: _onPressed,
        child: new Text("Submit"),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
            side: BorderSide(color: GoalsColors.MainColor))
      )
    );
  }
}
