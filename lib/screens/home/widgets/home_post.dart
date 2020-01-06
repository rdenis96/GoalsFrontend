import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goalsfrontend/models/home/post.dart';
import 'package:goalsfrontend/utils/common/helpers/build_context_extensions.dart';

class HomePost extends StatefulWidget {
  final Post post;

  HomePost(this.post, {Key key}) : super(key: key);

  @override
  _HomePostState createState() => _HomePostState();
}

class _HomePostState extends State<HomePost> {
  void onFavoritePressed() {
    widget.post.isLiked = !widget.post.isLiked;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        children: <Widget>[
          Padding(
              padding:
                  new EdgeInsets.only(top: context.heightFromPercentage(10))),
          Padding(
              child: CircleAvatar(
                  backgroundImage: NetworkImage(widget.post.userAvatarUrl)),
              padding: new EdgeInsets.only(
                  left: context.widthFromPercentage(4),
                  right: context.widthFromPercentage(2))),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(widget.post.userName,
                  style: TextStyle(fontStyle: FontStyle.italic)),
              if (true) Text(widget.post.userLocation),
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
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.network(widget.post.contentUrl,
                      fit: BoxFit.fitWidth,
                      width: context.width(),
                      height: context.heightFromPercentage(30))
                ],
              ),
            ],
          )
        ],
      ),
      Row(
        children: <Widget>[
          Padding(
            padding: new EdgeInsets.only(
                top: context.heightFromPercentage(1),
                left: context.widthFromPercentage(4)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("20 likes", style: TextStyle(fontStyle: FontStyle.normal)),
                Text("5 comments",
                    style: TextStyle(fontStyle: FontStyle.italic)),
              ],
            ),
          ),
          Spacer(),
          GestureDetector(
            child: widget.post.isLiked == false
                ? Icon(Icons.favorite_border, color: Colors.black)
                : Icon(Icons.favorite, color: Colors.red),
            onTap: () => setState(() => onFavoritePressed()),
            
          ),
          Padding(
              padding: EdgeInsets.only(right: context.widthFromPercentage(4)),
              child: GestureDetector(
                child: Icon(Icons.share, color: Colors.black),
                onTap: () {},
              ))
        ],
      )
    ]);
  }
}
