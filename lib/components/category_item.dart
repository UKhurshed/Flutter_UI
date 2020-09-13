import 'package:flutter/material.dart';

import '../constants.dart';

class CategoryItem extends StatelessWidget {

  final String title;
  final bool isActive;
  final Function press;
  const CategoryItem({
    this.title,
    this.isActive = false,
    this.press,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            Text(
              title,
              style: isActive ? TextStyle(
                  color: kTextColor,
                  fontWeight: FontWeight.bold
              ) : TextStyle(fontSize: 14) ,
            ),
            if(isActive)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                height: 3,
                width: 22,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
              )
          ],
        ),
      ),
    );
  }
}