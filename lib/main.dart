import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/create_post.dart';
import 'package:flutter_ui/pages/home.dart';
import 'package:flutter_ui/pages/notifications.dart';
import 'package:flutter_ui/pages/profile.dart';
import 'package:flutter_ui/pages/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram',
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        home: MyHomePage()
      );
    }
}

class MyHomePage extends StatefulWidget{

  @override
  _MyHomePage createState() => _MyHomePage();

}

class _MyHomePage extends State<MyHomePage>{

  List<Widget> pages = [
    HomePage(),
    SearchPage(),
    CreatePostPage(),
    NotificationPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        body: TabBarView(
          children: pages,
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.only(bottom: 8),
          child: new TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home, size: 32,),
              ),
              Tab(
                icon: Icon(Icons.search, size: 32,),
              ),
              Tab(
                icon: Icon(Icons.add, size: 32, ),
              ),
              Tab(
                icon: Icon(Icons.favorite, size: 32,),
              ),
              Tab(
                icon: Icon(Icons.perm_identity, size: 33,),
              ),
            ],
            unselectedLabelColor: Colors.black,
            labelColor: Colors.black54,
            indicatorColor: Colors.transparent,
          ),
        ),
      ),
    );

  }
}