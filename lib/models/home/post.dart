
import 'package:flutter/material.dart';

class Post{
  int id;
  String contentUrl;
  String contentDescription;
  String userName;
  String userAvatarUrl;
  String userLocation;
  bool isLiked = false;

  @override
  bool operator ==(o) => o is Post && 
        id == o.id && 
        contentUrl == o.contentUrl && 
        contentDescription == o.contentDescription &&
        userName == o.userName &&
        userAvatarUrl == o.userAvatarUrl &&
        userLocation == o.userLocation &&
        isLiked == o.isLiked;

  @override 
  int get hashCode => hashValues(id, contentUrl, contentDescription, userName, userAvatarUrl, userLocation, isLiked);
  
}