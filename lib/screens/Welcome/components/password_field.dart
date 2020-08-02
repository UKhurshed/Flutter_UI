import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
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
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Пароль",
            hintStyle: TextStyle(
                color: Colors.grey[700]),
            border: InputBorder.none
        ),
      ),
    );
  }
}