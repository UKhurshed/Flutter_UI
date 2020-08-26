import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/data/model/app_user.dart';
import 'package:flutter_ui/presentation/sign_in/model/user_repository.dart';
import 'package:meta/meta.dart';

part 'signin_event.dart';
part 'signin_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final UserRepository _userRepository;
  SignInBloc(this._userRepository) : super(SignInInitial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    if (event is GetUser){
      try{
          yield SignInLoading();
          final userAuth = await _userRepository.fetchUser(event.email, event.password);
          yield SignInLoaded(userAuth);
      }on NetworkException{
          yield SignInError("Couldn't authenticated User.");
      }
    }
  }
}
