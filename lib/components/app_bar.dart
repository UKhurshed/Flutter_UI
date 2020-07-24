import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.menu),
      onPressed: () {},
    ),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
              style: Theme
                  .of(context)
                  .textTheme
                  .headline6
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 22),
              children: [
                TextSpan(
                  text: 'Papr',
                  style: TextStyle(color: blackTxtColor),
                ),
              ]
          ),
        ),
//        SizedBox(width: 3),
        SvgPicture.asset("assets/icons/chilli_3.svg", width: 25, height: 40,),
        SizedBox(width: 3),
        RichText(
          text: TextSpan(
            style: Theme
                .of(context)
                .textTheme
                .headline6
                .copyWith(fontWeight: FontWeight.bold, fontSize: 22),
            children: [
              TextSpan(
            text: 'ka',
            style: TextStyle(color: blackTxtColor),
              ),
            ],
          ),
        ),
      ],
    ),
    actions: [IconButton(icon: Icon(Icons.notifications), onPressed: () {},)],
  );
}