import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goalsfrontend/utils/common/helpers/device_context_size.dart';

class HomePost extends StatefulWidget {
  @override
  _HomePostState createState() => _HomePostState();
}

class _HomePostState extends State<HomePost> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(padding: new EdgeInsets.only(top: DeviceContextSize.heightFromPercentage(context, 10))),
        Padding(child: CircleAvatar(backgroundColor: Colors.blue), padding: new EdgeInsets.only(left: DeviceContextSize.widthFromPercentage(context, 4), right: DeviceContextSize.widthFromPercentage(context, 2))),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Gigel Frone", style: TextStyle(fontStyle: FontStyle.italic)),
            if (true) Text("Earth"),
          ],
        ),
        Spacer(),
        IconButton(icon: Icon(Icons.more_vert), onPressed: () {},)
      ],
    );
  }
}
