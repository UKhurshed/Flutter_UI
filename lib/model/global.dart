import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_ui/model/post.dart';
import 'package:flutter_ui/model/user.dart';

import 'comment.dart';

TextStyle textStyle = new TextStyle(fontFamily: 'Gotham');
TextStyle textStyleBold = new TextStyle(fontFamily: 'Gotham', fontWeight: FontWeight.bold, color: Colors.black);
TextStyle textStyleLightGrey = new TextStyle(fontFamily: 'Gotham', color: Colors.grey);

Post post1 = new Post(new AssetImage('assets/images /first_1.jpg'), user, "My first post", DateTime.now(), [follower1, follower2, follower3], [], false, false);
final User user = new User('ukhurshed', AssetImage('assets/images/profile.png'), [
  follower1,
  follower2,
  follower3
], [
  follower1,
  follower2,
  follower3,
  follower4,
  follower5,
  follower6
], [], [], false);

  User follower1 = new User('Mountain', AssetImage('assets/images/mountain.jpeg'), [], [], [], [], true);
  User follower2 = new User('Batman', AssetImage('assets/images/batman.jpeg'), [], [], [], [], false);
  User follower3 = new User('pibodi', AssetImage('assets/images/pibodi.jpeg'), [], [], [], [], true);
  User follower4 = new User('cool cat', AssetImage('assets/images/cat.jpg'), [], [], [], [], true);
  User follower5 = new User('superman', AssetImage('assets/images/superman.jpg'), [], [], [], [], true);
  User follower6 = new User('flash', AssetImage('assets/images/flash.jpg'), [], [], [], [], false);

  List<Post> userPosts = [
    new Post(new AssetImage('assets/images/post.jpeg'), user, "My first post", DateTime.now(), [follower1, follower2, follower3, follower4, follower5, follower6], [
    new Comment(follower1, "This was amazing!", DateTime.now(), false),
    new Comment(follower2, "Cool one", DateTime.now(), false),
    new Comment(follower4, "This is no good at all \nbuddy, don't post this stuff", DateTime.now(), false)
  ], false, false),

      new Post(new AssetImage('assets/images/waterfall.jpeg'), follower1, "This is such a great post though", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
      new Comment(follower3, "This was super cool!", DateTime.now(), false),
      new Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
      new Comment(user, "I know rite!", DateTime.now(), false),
      new Comment(follower5, "I'm batman", DateTime.now(), false)
    ], false, false),
      new Post(new AssetImage('assets/images/winter.jpeg'), follower5, "How did I even take this photo??", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
      new Comment(follower3, "This was super cool!", DateTime.now(), false),
      new Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
      new Comment(user, "I know rite!", DateTime.now(), false),
      new Comment(follower5, "I'm batman", DateTime.now(), false)
    ], false, false),
      new Post(new AssetImage('assets/images/autumn.jpeg'), follower3, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
      new Comment(follower3, "This was super cool!", DateTime.now(), false),
      new Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
      new Comment(user, "I know rite!", DateTime.now(), false),
      new Comment(follower5, "I'm batman", DateTime.now(), false)
    ], false, false),
      new Post(new AssetImage('assets/images/winter.jpeg'), follower3, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
      new Comment(follower3, "This was super cool!", DateTime.now(), false),
      new Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
      new Comment(user, "I know rite!", DateTime.now(), false),
      new Comment(follower5, "I'm batman", DateTime.now(), false)
    ], false, false),
      new Post(new AssetImage('assets/images/spring.jpeg'), follower3, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
      new Comment(follower3, "This was super cool!", DateTime.now(), false),
      new Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
      new Comment(user, "I know rite!", DateTime.now(), false),
      new Comment(follower5, "I'm batman", DateTime.now(), false)
    ], false, false),
      new Post(new AssetImage('assets/images/summer.jpeg'), follower3, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
      new Comment(follower3, "This was super cool!", DateTime.now(), false),
      new Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
      new Comment(user, "I know rite!", DateTime.now(), false),
      new Comment(follower5, "I'm batman", DateTime.now(), false)
    ], false, false),
      new Post(new AssetImage('assets/images/winter.jpeg'), follower3, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
      new Comment(follower3, "This was super cool!", DateTime.now(), false),
      new Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
      new Comment(user, "I know rite!", DateTime.now(), false),
      new Comment(follower5, "I'm batman", DateTime.now(), false)
    ], false, false),
      new Post(new AssetImage('assets/images/spring.jpeg'), follower3, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
      new Comment(follower3, "This was super cool!", DateTime.now(), false),
      new Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
      new Comment(user, "I know rite!", DateTime.now(), false),
      new Comment(follower5, "I'm batman", DateTime.now(), false)
    ], false, false),
  ];

String title = "Instagram";