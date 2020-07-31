import 'package:flutter/material.dart';

class ListTile extends StatelessWidget {

  final String title;
  final Icon icon;
  final Function press;
  const ListTile({this.title, this.icon, Key key, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(

        ),
      ),
    );
  }
}
