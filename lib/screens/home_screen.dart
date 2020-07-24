import 'package:flutter/material.dart';
import 'package:flutter_ui/components/BottomNavBar.dart';
import 'package:flutter_ui/components/app_bar.dart';
import 'package:flutter_ui/components/body.dart';

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavigation(),
      body: Body(),
    );
  }
}

