import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key key,
    @required this.controller,
    this.keyboard = TextInputType.text,
    this.isObscure = false,
    this.hint,
  }) : super(key: key);

  final TextEditingController controller;
  final TextInputType keyboard;
  final bool isObscure;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[200]))),
      child: TextField(
        keyboardType: keyboard,
        controller: controller,
        obscureText: isObscure,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey[700], fontFamily: 'Montserrat-Black', fontWeight: FontWeight.w600),
            border: InputBorder.none
        ),
      ),
    );
  }
}