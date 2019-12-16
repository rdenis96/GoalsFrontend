import 'package:flutter/material.dart';
import 'package:goalsfrontend/utils/common/callbacks_definitions.dart';
import 'package:goalsfrontend/utils/common/constants/goals_colors.dart';
import 'package:goalsfrontend/utils/common/helpers/build_context_extensions.dart';

class SubmitButton extends StatelessWidget {
  final OnPressedSubmit onPressed;
  final BuildContext context;
  SubmitButton(this.context, this.onPressed);

  void callOnPressed() {
    onPressed(context);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: context.heightFromPercentage(5),
        width: double.infinity,
        child: new RaisedButton(
            padding: new EdgeInsets.only(
                top: context.heightFromPercentage(0),
                left: context.widthFromPercentage(10),
                right: context.widthFromPercentage(10)),
            textColor: Colors.white,
            color: GoalsColors.materialMainColor,
            onPressed: callOnPressed,
            child: new Text("Submit"),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: GoalsColors.materialMainColor))));
  }
}
