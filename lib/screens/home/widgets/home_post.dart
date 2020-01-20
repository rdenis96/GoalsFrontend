import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goalsfrontend/models/home/post.dart';
import 'package:goalsfrontend/screens/home/constants/post_colors.dart';
import 'package:goalsfrontend/screens/home/widgets/post_popup_menu.dart';
import 'package:goalsfrontend/utils/common/extensions/build_context_extensions.dart';

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

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
      Container(
          color: PostColors.headerColor,
          child: Row(
            children: <Widget>[
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
              GestureDetector(
                child: Icon(Icons.share, color: Colors.black),
                onTap: () {},
              ),
              PostPopupMenu(widget.post.id),
            ],
          )),
      Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.network(widget.post.contentUrl,
                      fit: BoxFit.fill,
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
                left: context.widthFromPercentage(4)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("20 likes",
                        style: TextStyle(fontStyle: FontStyle.normal)),
                    Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Text("|")),
                    Text("5 comments",
                        style: TextStyle(fontStyle: FontStyle.italic)),
                  ],
                ),
                Text("2 days ago",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 10),)
              ],
            ),
          ),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(right: context.widthFromPercentage(3)),
              child: IconButton(
                icon: widget.post.isLiked == false
                    ? Icon(Icons.favorite_border, color: Colors.black)
                    : Icon(Icons.favorite, color: Colors.red),
                onPressed: () => setState(() => onFavoritePressed()),
              )),
        ],
      ),
      Padding(padding: EdgeInsets.only(bottom: context.heightFromPercentage(2)))
    ]);
  }
}
