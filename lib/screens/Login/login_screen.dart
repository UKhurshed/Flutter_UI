import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ui/screens/components/login_field.dart';
import 'package:flutter_ui/screens/components/password_field.dart';
import 'package:flutter_ui/screens/components/sign_rounded_button.dart';
import 'components/forgot_password.dart';
import 'package:flutter_ui/screens/components/sign_in_up_navigator.dart';

void main () => runApp(SignInScreen());


class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainContainer(),
    );
  }
}

class MainContainer extends StatelessWidget {
  const MainContainer({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    colors: [
                      Colors.blue[900],
                      Colors.blue[800],
                      Colors.blue[400]
                    ]
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('VVMarket',
                        style: TextStyle(
                            color: Colors.white, fontSize: 36),),
                      Text("Login",
                        style: TextStyle(
                            color: Colors.white, fontSize: 28),
                      ),
                      SizedBox(height: 10),

                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.only(top: 25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60)),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [BoxShadow(
                                      color: Color.fromRGBO(225, 95, 27, .3),
                                      blurRadius: 20,
                                      offset: Offset(0, 10)
                                  )
                                  ]
                              ),
                              child: Column(
                                children: <Widget>[
                                  LoginField(hint_txt: "Имя"),
                                  PasswordField(),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            ForgotPassword(),
                            SizedBox(height: 20),
                            SignRoundedButton(signTxt: 'SIGN IN'),
                            SizedBox(height: 15),
                            SignNavigator(accountQuestion: "Don't have an Account?", signTxt: 'Sign Up', choiceSign: "signUp",),
                            SizedBox(height: 110),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}







