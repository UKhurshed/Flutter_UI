import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter UI',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Main',
              style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          body: Center(
            child: Container(
              child: Text('Hello There',
                style: TextStyle(fontSize: 25),),
            ),
          ),
        ),
      );
    }
}