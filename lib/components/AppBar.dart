import 'package:flutter/material.dart';

AppBar homeAppBar() {
  return AppBar(
      elevation: 0,
      backgroundColor: Colors.blue,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('VVMarket',
            style: TextStyle(color: Colors.white),
          ),
        ],
      )
  );
}