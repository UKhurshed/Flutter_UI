import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
      return SafeArea(
        child: Center(
         child:Text('Splash Screen', style: TextStyle(fontSize: 32),),
        ),
      );
  }
}