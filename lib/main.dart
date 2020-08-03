import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/Login/login_screen.dart';
void main() => runApp(HomePage());

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VVMarket',
      home: Scaffold(
        body: SignInScreen()
      ),
    );
  }
}