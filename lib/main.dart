import 'package:flutter/material.dart';
import 'package:flutter_ui/components/MainDrawer.dart';
import 'package:flutter_ui/screens/Welcome/welcome_screen.dart';

import 'components/AppBar.dart';
import 'components/home.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VVMarket',
      home: Scaffold(
        body: WelcomeScreen()
      ),
    );
  }
}