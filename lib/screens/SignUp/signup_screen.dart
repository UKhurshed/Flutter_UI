import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_ui/screens/SignUp/components/first_name_field.dart';
import 'package:flutter_ui/screens/SignUp/components/last_name_field.dart';
import 'package:flutter_ui/screens/components/login_field.dart';
import 'package:flutter_ui/screens/components/password_field.dart';
import 'package:flutter_ui/screens/components/sign_in_up_navigator.dart';
import 'package:flutter_ui/screens/components/sign_rounded_button.dart';

class signup extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpContainer(),
    );
  }
}

class SignUpContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
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
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('VVMarket',
                        style: TextStyle(
                            color: Colors.white, fontSize: 36),),
                      Text("Sign Up",
                        style: TextStyle(
                            color: Colors.white, fontSize: 28),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60),
                        topLeft: Radius.circular(60),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
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
                                children: [
                                  FirstNameField(),
                                  LastNameField(),
                                  LoginField(hint_txt: "E-mail",),
                                  PasswordField(),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            SignRoundedButton(signTxt: 'SIGN UP',),
                            SizedBox(height: 15),
                            SignNavigator(accountQuestion: "Already have an Account?", signTxt: 'Sign In', choiceSign: "signIn",),
                            SizedBox(height: 45),
                          ],
                        ),
                      )
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
