import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Приветствуем!',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
      ),
    );
  }
}

