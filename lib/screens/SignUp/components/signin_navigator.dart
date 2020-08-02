import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/SignUp/signup_screen.dart';
import 'package:flutter_ui/screens/Welcome/welcome_screen.dart';

class SignInNavigator extends StatelessWidget {
  const SignInNavigator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an Account?",
              style: TextStyle(fontSize: 18),),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) {
                      return WelcomeScreen();
                    }
                ),
                );
              },
              child: Text('Sign In', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              ),
            )
          ],
        )
    );
  }
}