import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_ui/model/comment.dart';
import 'package:flutter_ui/model/global.dart';
import 'package:flutter_ui/model/post.dart';
import 'package:flutter_ui/model/user.dart';

class HomePage extends StatefulWidget{

  @override
  _HomePage createState () => _HomePage();

}

class _HomePage extends State<HomePage>{

  static int page = 1;
  static Post the_post = post1;

  @override
  Widget build(BuildContext context) {
      Map<int, Widget> pageView = {
        1 : getMain(),
        2 : getLikes(the_post.likes),
        3 : getComments(the_post.comments)
      };
      return pageView[page];
  }

  Widget getMain() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram",
            style: textStyleBold
        ),
        leading: Icon(Icons.camera_alt, color: Colors.black,),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child:  ListView(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    height: 85,
                    child: getStories(),
                  ),
                  Divider(),
                  Column(
                    children: getPosts(context),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getStories(){
    return ListView(
      scrollDirection: Axis.horizontal,
      children: getUserStories(),
    );
  }

  List<Widget> getUserStories(){
    List<Widget> stories = [];
    for(User follower in user.following){
      stories.add(getStory(follower));
    }
    return stories;
  }

  Widget getStory(User follower){
    return Container(
      margin: const EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            child: Stack(
              alignment: Alignment(0, 0),
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: CircleAvatar(
                    backgroundColor: follower.hasStory ? Colors.red : Colors.grey,
                  ),
                ),
                Container(
                  height: 57,
                  width: 57,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                  ),
                ),
                Container(
                  height: 55,
                  width: 55,
                  child: CircleAvatar(
                    backgroundImage: follower.profilePicture,
                  ),
                ),
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  onPressed: () {},
                )
              ],
            ),
          ),
          Text(follower.username, style: textStyle),
        ],
      ),
    );
  }

  List<Widget> getPosts(BuildContext context) {
    List<Widget> posts = [];
    int index = 0;
    for(Post post in userPosts){
      posts.add(getPost(context, post, index));
      index++;
    }
    return posts;
  }

  Widget getPost(BuildContext context, Post post, int index){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        backgroundImage: post.user.profilePicture,
                      ),
                    ),
                    Text(post.user.username, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            constraints: BoxConstraints.expand(height: 1),
            color: Colors.grey
          ),
          Container(
            constraints: BoxConstraints(
              maxHeight: 282
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: post.image,
                fit: BoxFit.cover
              )
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Stack(
                    alignment: Alignment(0, 0),
                    children: [
                      Icon(Icons.favorite, size: 30, color: post.isLiked ? Colors.red : Colors.black),
                      IconButton(icon: Icon(Icons.favorite), color: post.isLiked ? Colors.red: Colors.white,
                        onPressed: () {
                        setState(() {
                          userPosts[index].isLiked = post.isLiked ? false : true;
                          if(!post.isLiked){
                            post.likes.remove(user);
                          }
                          else{
                            post.likes.add(user);
                          }
                        });
                        },)
                    ],
                  ),
                  Stack(
                    alignment: Alignment(0, 0),
                    children: [
                      Icon(Icons.mode_comment, size: 30, color: Colors.black),
                      IconButton(icon: Icon(Icons.mode_comment), color: Colors.white, onPressed: () {} ,)
                    ],
                  ),
                  Stack(
                    alignment: Alignment(0, 0),
                    children: [
                      Icon(Icons.send, size: 30, color: Colors.black),
                      IconButton(icon: Icon(Icons.send), color: Colors.white, onPressed: () {},)
                    ],
                  ),
                ],
              ),
              Stack(
                alignment: Alignment(0, 0),
                children: [
                  Icon(Icons.bookmark, size: 30, color: Colors.black),
                  IconButton(icon: Icon(Icons.bookmark), color: post.isSaved ? Colors.black : Colors.white,
                    onPressed: () {
                    setState(() {
                      userPosts[index].isSaved = post.isSaved ? false : true;
                      if(!post.isSaved){
                        user.savedPosts.remove(post);
                      }
                      else{
                        user.savedPosts.add(post);
                      }
                    });
                    },)
                ],
              ),
            ],
          ),
          FlatButton(
            child: Text(post.likes.length.toString() + " likes",
              style: textStyleBold,
            ),
            onPressed: () {
              setState(() {
                the_post = post;
                page = 2;
                build(context);
              });
            },
          ),
          Row(children: [
            Container(
              margin: const EdgeInsets.only(left: 15, right: 10),
              child: Text(
                post.user.username,
                style: textStyleBold,
              ),
            ),
            Text(
              post.description,
              style: textStyle,
              )
            ],
          ),
          FlatButton(
            child: Text("View all " + post.comments.length.toString() + " comments", style: textStyleLightGrey),
            onPressed: (){
              setState(() {
                the_post = post;
                page = 3;
                build(context);
              });
            },
          ),
        ],
      ),
    );
  }

  Widget getLikes(List<User> likes){
    List<Widget> likers = [];
    for(User follower in likes){
      likers.add(new Container(
        height: 45,
        padding: EdgeInsets.all(10),
        child: FlatButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(follower.username,),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
                child: FlatButton(
                  color: user.following.contains(follower) ? Colors.white : Colors.blue,
                  child: Text(user.following.contains(follower) ? "Following" : "Follow", style: TextStyle(fontWeight: FontWeight.bold, color: user.following.contains(follower) ? Colors.grey : Colors.white)),
                  onPressed: (){
                    setState(() {
                      if(user.following.contains(follower)){
                        user.following.remove(follower);
                      }
                      else{
                        user.following.add(follower);
                      }
                    });
                  },
                ),
              ),
            ],
          ),
          onPressed: (){},
        ),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Likes", style: textStyleBold,
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: (){
            setState(() {
              page = 1;
              build(context);
            });
          },
        ),
      ),
      body: Container(
        child: ListView(
          children: likers
        ),
      ),
    );
  }

  Widget getComments(List<Comment> likes) {
    List<Widget> likers = [];
    DateTime now = DateTime.now();
    for(Comment comment in likes){
      int hoursAgo = (now.hour) - (comment.dateOfComment.hour - 1);
      likers.add(new Container(
        padding: EdgeInsets.all(10),
        child: FlatButton(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 30,
                    height: 30,
                    child: CircleAvatar(
                      backgroundImage: comment.user.profilePicture,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: new TextSpan(
                          style: new TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                          children: [
                            new TextSpan(text: comment.user.username, style: textStyleBold),
                            new TextSpan(text: ' ', style: textStyle),
                            new TextSpan(text: comment.comment, style: textStyle),
                          ]
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10, top: 20),
                            child: Text(hoursAgo.toString() + "h", style: textStyleLightGrey,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10, top: 20),
                            child: Text("like", style: textStyleLightGrey,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10, top: 20),
                            child: Text("Reply", style: textStyleLightGrey,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Stack(alignment: Alignment(0, 0),
                children: [
                  Container(
                    child: Icon(Icons.favorite, color: Colors.black, size: 25),
                  ),
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.favorite, color: comment.isLiked ? Colors.black : Colors.white, size: 20),
                      onPressed: (){
                        setState(() {
                          comment.isLiked = comment.isLiked ? false : true;
                        });
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
          onPressed: (){

          },
        ),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black,),
                    onPressed: (){
                      setState(() {
                        page = 1;
                        build(context);
                      });
                    },
                  ),
                  Text('Comments', style: textStyleBold,
                  )
                ],
              ),
              IconButton(
                icon: Icon(Icons.send, color: Colors.black,),
                onPressed: (){},
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: ListView(
          children: likers,
        ),
      ),
    );
  }
}