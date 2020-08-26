import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/components/home.dart';
import 'package:flutter_ui/config/route.dart';
import 'package:flutter_ui/presentation/Home.dart';
import 'package:flutter_ui/presentation/features/authentication/authentication.dart';
import 'package:flutter_ui/presentation/features/authentication/authentication_event.dart';
import 'package:flutter_ui/presentation/features/splash_screen.dart';
import 'package:flutter_ui/presentation/sign_in/model/user_repository.dart';
import 'package:flutter_ui/presentation/sign_in/signin_bloc/signin_bloc.dart';
import 'package:flutter_ui/presentation/sign_in/signin_screen.dart';
import 'package:provider/provider.dart';

import 'data/repositories/abstract/user_repository.dart';
import 'locator.dart' as service_locator;

void main() => runApp(VVmarketApp());
//  service_locator.init();

class VVmarketApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VVMarket',
      home: BlocProvider(
        create: (context) => SignInBloc(UserRepositoryImpl()),
        child: SignInPage(),
      ),
      debugShowCheckedModeBanner: false,
//      initialRoute: '/',
//      routes: {
//        '/' : (context) => Home(),
//        '/signIn': (context) => SignInPage()
//      },
//      onGenerateRoute: _registerRoutesWithParameters,
    );
  }

//  Map<String, WidgetBuilder> _registerRoutes() {
//    return <String, WidgetBuilder>{
//      VVmarketRoute.signin: (context) => _buildSignInBloc(),
//      VVmarketRoute.home: (context) => Home(),
//      VVmarketRoute.profile: (context) => BlocBuilder<AuthenticationBloc, AuthenticationState>(
//        builder: (context, state){
//          if(state is Authenticated){
//            return SafeArea(
//              child: Scaffold(
//                body: Center(
//                  child: Text('Profile'),
//                ),
//              ),
//            );
//          } else if(state is Unauthenticated){
//            return _buildSignInBloc();
//          } else{
//            return SplashScreen();
//          }
//        },
//      )
//    };
//  }

//  BlocProvider<SignInBloc> _buildSignInBloc() {
//    SignInState initialState;
//    return BlocProvider<SignInBloc>(
//      create: (context) => SignInBloc(
//        userRepository: RepositoryProvider.of<UserRepository>(context),
//        authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
//      ),
//      child: SignInScreen(),
//    );
//  }
//
//  Route _registerRoutesWithParameters(RouteSettings settings) {
//    return MaterialPageRoute(builder: (context) {
//      return SignInScreen();
//    });
//  }
}
