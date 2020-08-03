import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  final String hint_txt;
  const LoginField({
    this.hint_txt,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(
              color: Colors.grey[200]))
      ),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: hint_txt,
            hintStyle: TextStyle(
                color: Colors.grey[700]),
            border: InputBorder.none
        ),
      ),
    );
  }
}