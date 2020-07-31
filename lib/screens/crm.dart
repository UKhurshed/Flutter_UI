import 'package:flutter/material.dart';

class crm extends StatelessWidget {
  const crm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Список жалоб/предложений', style: TextStyle(fontSize: 18),),
          ],
        ),
      ),
    );
  }
}

