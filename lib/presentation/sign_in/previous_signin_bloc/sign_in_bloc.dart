import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ui/data/model/app_user.dart';
import 'package:flutter_ui/data/repositories/abstract/user_repository.dart';
import 'package:flutter_ui/presentation/features/authentication/authentication.dart';

import 'sign_in.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {

//  SignInBloc ( this.userRepository, this.authenticationBloc): super(null);

  final AuthenticationBloc authenticationBloc;
  final UserRepository userRepository;
//  final SignInState initialState;

  SignInBloc({@required this.authenticationBloc, @required this.userRepository})
      : assert(authenticationBloc != null),
        assert(userRepository != null),
        super(null);

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {

    if (event is SignInPressed) {
      yield SignInProcessState();
      try {
        var token = await userRepository.signIn(email: event.email, password: event.password);
        authenticationBloc.add(LoggedIn(token));
        SignInFinishedState();
      } catch (error) {
        yield SignInErrorState(error);
      }

    }
  }
}

