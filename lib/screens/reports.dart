import 'package:flutter/material.dart';

class Reports extends StatelessWidget {
  const Reports({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Список складов', style: TextStyle(fontSize: 18),),
          ],
        ),
      ),
    );
  }
}


