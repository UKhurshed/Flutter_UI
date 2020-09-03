import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/components/home.dart';
import 'package:flutter_ui/presentation/features/splash_screen.dart';
import 'package:flutter_ui/presentation/components/loading_indicator.dart';
import 'package:flutter_ui/presentation/sign_in/authentication_bloc/authentication_bloc.dart';
import 'package:flutter_ui/presentation/sign_in/repository/user_repository.dart';
import 'package:flutter_ui/presentation/sign_in/signin_page.dart';

void main() {
  final UserRepository userRepository = UserRepository();
  runApp(
    BlocProvider<AuthenticationBloc>(
      create: (context) {
        return AuthenticationBloc(userRepository: userRepository)
          ..add(AppStarted());
      },
      child: VVmarketApp(userRepository: userRepository),
    ),
  );
}

class VVmarketApp extends StatelessWidget {

  final UserRepository userRepository;

  VVmarketApp({this.userRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VVMarket',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColorDark: Colors.blue[800],
        primaryColorLight: Colors.blue[700],
      ),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        // ignore: missing_return
        builder: (context, state) {
          if (state is Uninitialized) {
            return SplashScreen();
          }
          if (state is Authenticated) {
            return Home();
          }
          if (state is Unauthenticated) {
            return SignInPage(userRepository: userRepository);
          }
          if (state is AuthenticateLoading) {
            return LoadingIndicator();
          }
        },
      ),
    );
  }
}