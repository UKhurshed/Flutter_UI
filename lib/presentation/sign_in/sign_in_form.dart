import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/presentation/components/input_field.dart';
import 'package:flutter_ui/presentation/components/sign_in_up_navigator.dart';
import 'package:flutter_ui/presentation/components/loading_indicator.dart';
import 'package:flutter_ui/presentation/components/signin_button.dart';
import 'package:flutter_ui/presentation/sign_in/signin_bloc/signin_bloc.dart';

class SignInForm extends StatefulWidget {
  @override
  State<SignInForm> createState() => _SignInForm();
}

class _SignInForm extends State<SignInForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    _loginButton() {
      BlocProvider.of<SignInBloc>(context).add(
          GetUser(
              email: _emailController.text,
              password: _passwordController.text));
    }

    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state is SignInError) {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text(state.message),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 3),
          ));
        }
      },
      child: BlocBuilder<SignInBloc, SignInState>(
        builder: (context, state) {
          if (state is SignInLoading) {
            return LoadingIndicator();
          }
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
                          ])),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              'VVMarket',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontFamily: 'Montserrat'),
                            ),
                            Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontFamily: 'Montserrat'),
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
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  225, 95, 27, .3),
                                              blurRadius: 20,
                                              offset: Offset(0, 10))
                                        ]),
                                    child: Column(
                                      children: [
                                        InputField(hint: "E-mail",
                                          keyboard: TextInputType.emailAddress,
                                          controller: _emailController,),
                                        InputField(
                                          controller: _passwordController,
                                          hint: "Пароль",
                                          isObscure: true,),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  VVButton(title: 'SIGN IN', onPressed: state is! SignInLoading ? _loginButton : null),
                                  SizedBox(height: 15),
                                  SignNavigator(accountQuestion: "Don't have an Account?", signTxt: 'Sign Up', choiceSign: "signUp",),
                                  SizedBox(height: 5),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
