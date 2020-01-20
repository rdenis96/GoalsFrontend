import 'package:flutter/material.dart';
import 'package:goalsfrontend/screens/home/constants/post_colors.dart';

class PostPopupMenu extends StatelessWidget {
  final int postId;
  PostPopupMenu(this.postId);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        cardColor: PostColors.headerColor
      ),
      child: PopupMenuButton<int>(
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: FlatButton.icon(
            onPressed: null,
            icon: Icon(Icons.report),
            label: Text(
              "Report",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: FlatButton.icon(
            onPressed: null,
            icon: Icon(Icons.save),
            label: Text(
              "Save",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ],
      icon: Icon(Icons.more_vert),
      offset: Offset(0, 100),
      onSelected: (selected) => {print(selected)},
    ));
  }
}
