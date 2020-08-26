import 'package:flutter/material.dart';
import 'package:flutter_ui/presentation/sign_in/signin_screen.dart';
import 'package:flutter_ui/presentation/sign_up/signup_screen.dart';

class SignNavigator extends StatelessWidget {
  final String accountQuestion;
  final String signTxt;
  final String choiceSign;
  const SignNavigator({
    Key key,
    this.accountQuestion,
    this.choiceSign,
    this.signTxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(accountQuestion,
              style: TextStyle(fontSize: 18),),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) {
                      if(choiceSign == 'signIn'){
                        return SignInPage();
                      }
                      else{
                        return signup();
                      }

                    }
                ),
                );
              },
              child: Text(signTxt, style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              ),
            )
          ],
        )
    );
  }
}