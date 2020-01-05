import 'package:flutter/material.dart';
import 'package:goalsfrontend/models/home/post.dart';
import 'package:goalsfrontend/screens/home/widgets/home_post.dart';
import 'package:goalsfrontend/widgets/appbar/appbar.dart';
import 'package:goalsfrontend/widgets/appbar/constants/app_bar_titles.dart';
import 'package:goalsfrontend/widgets/appbar/enums/app_bar_type_enum.dart';
import 'package:goalsfrontend/widgets/appbar/widgets/app_bar_drawer.dart';

class Home extends StatelessWidget {

  List<Post> generateTestPosts (){
    List<Post> homePosts = new List<Post>();
    Post post = new Post();
    post.id = 1;
    post.contentUrl = "https://miro.medium.com/max/12000/1*ih1LLB8UY6QnB5tpcQQPkA.jpeg";
    post.userName = "Denis Ninja";
    post.userAvatarUrl = "https://img.favpng.com/12/15/8/ninja-computer-programming-learning-study-skills-png-favpng-5AG41F2Kzg1ZR8Fi1JBrfmrtV.jpg";
    post.userLocation = "Romania, Bucharest";
    homePosts.add(post);

    post = new Post();
    post.id = 2;
    post.contentUrl = "https://www.seebtm.com/wp-content/uploads/bigstock-volunteering-charity-cleanin-132100946.jpg";
    post.userName = "Tom Hardy";
    post.userAvatarUrl = "https://66.media.tumblr.com/8e305f75c7aab5b8a261e90c7ddb440e/tumblr_or9utsgIea1w1j400o9_250.png";
    post.userLocation = "United Kingdom, London";
    homePosts.add(post);

    post = new Post();
    post.id = 3;
    post.contentUrl = "https://cdn.postgradproblems.com/wp-content/uploads/2015/12/16d065ac5685ef3cde8bf010b1e89a26.jpg";
    post.userName = "Johnny Bravo";
    post.userAvatarUrl = "https://1d4chan.org/images/0/0a/Johnny_Bravo2.jpg";
    post.userLocation = "United States, New York";
    homePosts.add(post);

    
    post = new Post();
    post.id = 4;
    post.contentUrl = "http://lovestrandell.com/wp-content/uploads/2018/03/28-15078-post/2018.02.20-13.03.03-lovestrandell.com_.-generator_konf_mat-BILDNR_KA2_0890(pp_w768_h511).jpg";
    post.userName = "DJ Snake";
    post.userAvatarUrl = "https://upfr.ro/ro/wp-content/uploads/2019/05/dj-snake.jpg";
    post.userLocation = "Spania, Madrid";
    homePosts.add(post);

    return homePosts;
  }

  @override
  Widget build(BuildContext context) {
    List<Post> homePosts = new List<Post>();
    var generatedPosts = generateTestPosts();
    homePosts.addAll(generatedPosts);

    List<Widget> homePostsWidget = new List<Widget>();
    homePosts.forEach((e) => homePostsWidget.add(new HomePost(e)));

    return new Scaffold(
      appBar: CustomAppBar(AppBarType.Home, AppBarTitles.home),
      endDrawer: AppBarNavigationDrawer(),
      body: new Container(
          child: ListView(
        children: homePostsWidget,
      )),
    );
  }
}
