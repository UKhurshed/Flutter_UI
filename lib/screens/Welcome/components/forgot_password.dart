import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        padding: EdgeInsets.only(right: 0.0),
        onPressed: () => 'Forgot Password Button Pressed',
        child:Text('Forgot password?',
          style: TextStyle(color: Colors.grey[600], fontSize: 18),
        ),
      ),
    );
  }
}