import 'package:flutter/material.dart';
import 'package:flutter_ui/components/home.dart';
import 'package:flutter_ui/screens/SignUp/signup_screen.dart';

class SignUpNavigator extends StatelessWidget {
  const SignUpNavigator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an Account?",
              style: TextStyle(fontSize: 18),),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) {
                      return signup();
                    }
                ),
                );
              },
              child: Text('Sign Up', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              ),
            )
          ],
        )
    );
  }
}