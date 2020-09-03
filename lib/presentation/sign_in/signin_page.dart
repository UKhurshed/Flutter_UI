import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/presentation/sign_in/authentication_bloc/authentication_bloc.dart';
import 'package:flutter_ui/presentation/sign_in/repository/user_repository.dart';
import 'package:flutter_ui/presentation/sign_in/signin_bloc/signin_bloc.dart';

import 'sign_in_form.dart';

class SignInPage extends StatelessWidget{
  final UserRepository userRepository;

  SignInPage({@required this.userRepository});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context){
          return SignInBloc(
            userRepository: userRepository,
            authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),);
        },
        child: SignInForm(),
      ),
    );
  }
}