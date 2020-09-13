import 'package:flutter/material.dart';

class Operations extends StatelessWidget {
  const Operations({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Приход товара', style: TextStyle(fontSize: 18),),
          ],
        ),
      ),
    );
  }
}

