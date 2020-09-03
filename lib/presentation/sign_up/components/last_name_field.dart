import 'package:flutter/material.dart';

class LastNameField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(
              color: Colors.grey[200]))
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: "Фамилия",
            hintStyle: TextStyle(
                color: Colors.grey[700], fontFamily: 'Montserrat', fontWeight: FontWeight.w600),
            border: InputBorder.none
        ),
      ),
    );
  }
}