import 'package:flutter/material.dart';
import 'package:flutter_ui/constants.dart';
import '../details/app_bar.dart';
import '../details/body.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: DetailsAppBar(),
      body: Body(),
    );
  }
}







