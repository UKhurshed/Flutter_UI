import 'package:flutter/material.dart';
import 'package:flutter_ui/MainDrawer.dart';

import 'AppBar.dart';
import 'home.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VVMarket',
      home: Scaffold(
        appBar: homeAppBar(context),
        body: Home(),
        drawer: MainDrawer(),
      ),
    );
  }
}