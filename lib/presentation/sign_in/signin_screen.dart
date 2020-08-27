import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/components/home.dart';
import 'package:flutter_ui/presentation/components/sign_in_up_navigator.dart';
import 'package:flutter_ui/presentation/sign_in/components/signin_button.dart';
import 'package:flutter_ui/presentation/sign_in/signin_bloc/signin_bloc.dart';

//class SignInScreen extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() => _SignInScreenState();
//}
//
//class _SignInScreenState extends State<SignInScreen> {
////  const MainContainer({
////    Key key,
////  }) : super(key: key);
//
//  final TextEditingController emailController = TextEditingController();
//  final TextEditingController passwordController = TextEditingController();
//  final GlobalKey<InputFieldState> emailKey = GlobalKey();
//  final GlobalKey<InputFieldState> passwordKey = GlobalKey();
//
//  @override
//  Widget build(BuildContext context) {
//    var height = MediaQuery.of(context).size.height;
//    var width = MediaQuery.of(context).size.width;
//
//    return Scaffold(
//      body: BlocConsumer<SignInBloc, SignInState>(
//        listener: (context, state) {
//          if (state is SignInFinishedState) {
//            Navigator.of(context).pushNamedAndRemoveUntil(
//                VVmarketRoute.home, (Route<dynamic> route) => false);
//          }
//          if (state is SignInErrorState) {
//            Scaffold.of(context).showSnackBar(
//              SnackBar(
//                content: Text('${state.error}'),
//                backgroundColor: Colors.red,
//                duration: Duration(seconds: 3),
//              ),
//            );
//          }
//        },
//        builder: (context, state) {
//          if (state is SignInProcessState) {
//            return Center(
//              child: CircularProgressIndicator(),
//            );
//          }
//          return SingleChildScrollView(
//            child: Column(
//              children: [
//                Container(
//                  width: double.infinity,
//                  decoration: BoxDecoration(
//                      gradient: LinearGradient(
//                          begin: Alignment.topCenter,
//                          colors: [
//                        Colors.blue[900],
//                        Colors.blue[800],
//                        Colors.blue[400]
//                      ])),
//                      SizedBox(height: 10),
//                      Container(
//                        padding: const EdgeInsets.only(top: 25),
//                        width: double.infinity,
//                        decoration: BoxDecoration(
//                          color: Colors.white,
//                          borderRadius: BorderRadius.only(
//                              topLeft: Radius.circular(60),
//                              topRight: Radius.circular(60)),
//                        ),
//
//                                    child: Column(
//                                      children: <Widget>[
//                                        InputField(
//                                          hint: "E-mail",
//                                          key: emailKey,
//                                          controller: emailController,
//                                          validator: Validator.validateEmail,
//                                          keyboard: TextInputType.emailAddress,
//                                        ),
//                                        PasswordField(),
//                                      ],
//                                    ),
//                                  ),
//                                  SizedBox(height: 10),
//                                  ForgotPassword(),
//                                  SizedBox(height: 20),
//                                  VVButton(title: 'SIGN IN', onPressed: _validateAndSend),
//                                  SizedBox(height: 15),
//                                  SignNavigator(
//                                    accountQuestion: "Don't have an Account?",
//                                    signTxt: 'Sign Up',
//                                    choiceSign: "signUp",
//                                  ),
//                                  SizedBox(height: 110),
//                                ],
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ],
//            ),
//          );
//        },
//      ),
//    );
//  }
//
//  void _validateAndSend() {
//    if (emailKey.currentState.validate() != null) {
//      return;
//    }
//    if (passwordKey.currentState.validate() != null) {
//      return;
//    }
//    BlocProvider.of<SignInBloc>(context).add(SignInPressed(
//      email: emailController.text,
//      password: passwordController.text,
//    ));
//  }
//}

class SignInPage extends StatefulWidget {
  @override
  _SigninPage createState() => _SigninPage();
}

class _SigninPage extends State<SignInPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: BlocConsumer<SignInBloc, SignInState>(
          listener: (context, state) {
            if (state is SignInError) {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text(state.message),
              ));
            } else if (state is SignInLoaded) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()),);
            }
          },
          builder: (context, state) {
            if (state is SignInLoading) {
              return buildLoading();
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
//                    crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('VVMarket',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 36, fontFamily: 'Montserrat'),),
                              Text("Sign In",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 28, fontFamily: 'Montserrat' ),
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
                                          InputField(hint: "E-mail", keyboard: TextInputType.emailAddress, controller: emailController,),
                                          InputField(controller: passwordController,hint: "Пароль",isObscure: true,),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 30),
                                    VVButton(title: "SIGN IN", onPressed: () => submitUser(context, emailController.text, passwordController.text),),
                                    SizedBox(height: 15),
                                    SignNavigator(accountQuestion: "Don't have an Account?", signTxt: 'Sign Up', choiceSign: "signUp",),
                                    SizedBox(height: 5),
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
          },
        ),
      ),
    );
  }

  void submitUser(BuildContext context, String email, String password) {
    final userAuthBloc = context.bloc<SignInBloc>();
    userAuthBloc.add(GetUser(email: email, password: password));
  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}

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
            hintStyle: TextStyle(color: Colors.grey[700]),
            border: InputBorder.none
        ),
      ),
    );
  }
}
