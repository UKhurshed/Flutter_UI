import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  const LoginField({
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
            hintText: "Email",
            hintStyle: TextStyle(
                color: Colors.grey[700]),
            border: InputBorder.none
        ),
      ),
    );
  }
}