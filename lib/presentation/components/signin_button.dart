import 'package:flutter/material.dart';

class VVButton extends StatelessWidget {
  final double width;
  final double height;
  final Function onPressed;
  final String title;
  final IconData icon;
  final double iconSize;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;

  VVButton({
    Key key,
    this.width,
    this.height,
    this.icon,
    @required this.title,
    @required this.onPressed,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.borderColor = Colors.blueAccent,
    this.iconSize = 18,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.65,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: MaterialButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: Colors.blue[700],
          onPressed: onPressed,
          child: Align(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold, fontFamily: 'Montserrat'),
            ),
          ),
        ),
      ),
    );
  }
}