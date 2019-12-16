import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goalsfrontend/utils/common/helpers/build_context_extensions.dart';

class HomePost extends StatefulWidget {
  @override
  _HomePostState createState() => _HomePostState();
}

class _HomePostState extends State<HomePost> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        children: <Widget>[
          Padding(
              padding:
                  new EdgeInsets.only(top: context.heightFromPercentage(10))),
          Padding(
              child: CircleAvatar(backgroundImage: NetworkImage('http://thecusp.com.au/wp-content/uploads/2017/05/the-office-e1496120454166.jpg')),
              padding: new EdgeInsets.only(
                  left: context.widthFromPercentage(4),
                  right: context.widthFromPercentage(2))),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Gigel Frone",
                  style: TextStyle(fontStyle: FontStyle.italic)),
              if (true) Text("Earth"),
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      Row(
        children: <Widget>[Image.network(
                'https://previews.123rf.com/images/kruton/kruton1612/kruton161200067/69642448-happy-man-traveler-standing-in-forest-and-feel-relaxing-at-sunset-time-travel-concept.jpg',
                fit: BoxFit.fitWidth,
                width: context.width(),
                height: context.heightFromPercentage(30))
        ],
      )
    ]);
  }
}
