import 'package:flutter/material.dart';
import 'package:goalsfrontend/utils/common/callbacks_definitions.dart';
import 'package:goalsfrontend/utils/common/constants/goals_colors.dart';
import 'package:goalsfrontend/utils/common/helpers/device_context_size.dart';

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
        height: DeviceContextSize.heightFromPercentage(context, 5),
        width: double.infinity,
        child: new RaisedButton(
            padding: new EdgeInsets.only(
                top: DeviceContextSize.heightFromPercentage(context, 0),
                left: DeviceContextSize.widthFromPercentage(context, 10),
                right: DeviceContextSize.widthFromPercentage(context, 10)),
            textColor: Colors.white,
            color: GoalsColors.materialMainColor,
            onPressed: callOnPressed,
            child: new Text("Submit"),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: GoalsColors.materialMainColor))));
  }
}
