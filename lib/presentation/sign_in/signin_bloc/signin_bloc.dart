import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/presentation/sign_in/authentication_bloc/authentication_bloc.dart';
import 'package:flutter_ui/presentation/sign_in/repository/user_repository.dart';
import 'package:meta/meta.dart';

part 'signin_event.dart';

part 'signin_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final UserRepository userRepository;
  final AuthenticationBloc authenticationBloc;

  SignInBloc({@required this.userRepository, @required this.authenticationBloc})
      : super(SignInInitial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    if (event is GetUser) {
      // yield SignInLoading();
      yield SignInInitial();
      try {
        final userAuth = await userRepository.authenticate(
            email: event.email, password: event.password);

        authenticationBloc.add(LoggedIn(userAuth: userAuth));
        yield SignInInitial();
      } catch (error) {
        yield SignInError(message: error.toString());
      }
    }
  }
}
