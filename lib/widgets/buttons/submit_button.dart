import 'package:flutter/material.dart';
import 'package:goalsfrontend/utils/common/callbacks_definitions.dart';
import 'package:goalsfrontend/utils/common/constants/goals_colors.dart';

class SubmitButton extends StatelessWidget {
  final OnPressedSubmit onPressed;
  final BuildContext context;
  SubmitButton(this.context, this.onPressed);

  void callOnPressed(){
    onPressed(context);
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
        onPressed: callOnPressed,
        child: new Text("Submit"),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
            side: BorderSide(color: GoalsColors.MainColor))
      )
    );
  }
}
