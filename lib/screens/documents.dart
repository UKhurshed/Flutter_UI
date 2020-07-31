import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Documents extends StatelessWidget {
  const Documents({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Список документов', style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

