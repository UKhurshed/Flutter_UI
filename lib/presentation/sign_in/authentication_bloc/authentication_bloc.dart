import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_ui/presentation/sign_in/model/user_auth.dart';
import 'package:flutter_ui/presentation/sign_in/repository/user_repository.dart';
import 'package:meta/meta.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
//
// class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
//   AuthenticationBloc() : super(Uninitialized());
//
//   @override
//   Stream<AuthenticationState> mapEventToState(
//     AuthenticationEvent event,
//   ) async* {
//     if(event is AppStarted){
//       var token = await _getToken();
//       if(token != '') {
//         Storage().token = token;
//         yield Authenticated();
//       } else{
//         yield Unauthenticated();
//       }
//     }
//
//     if(event is LoggedIn){
//       Storage().token = event.token;
//       await _saveToken(event.token);
//       yield Authenticated();
//     }
//
//     if(event is LoggedOut){
//       Storage().token = '';
//       await _deleteToken();
//       yield Unauthenticated();
//     }
//   }
//
//   Future<String> _getToken() async{
//       return await Storage().secureStorage.read(key: 'access_token') ?? '';
//   }
//
//   Future<void> _saveToken(String token) async{
//     await Storage().secureStorage.write(key: 'access_token', value: token);
//   }
//
//   Future<void> _deleteToken() async{
//     await Storage().secureStorage.delete(key: 'access_token');
//   }
//
// }

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState>{
  final UserRepository userRepository;

  AuthenticationBloc({@required this.userRepository}): super(Uninitialized());

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent event) async* {
    if(event is AppStarted){
      final bool hasToken = await userRepository.hasToken();
      if (hasToken) {
        yield Authenticated();
      } else {
        yield Unauthenticated();
      }
    }
    if(event is LoggedIn){
      yield AuthenticateLoading();
      await userRepository.persistToken(
          user: event.userAuth
      );
      yield Authenticated();
    }

    if(event is LoggedOut){
      yield AuthenticateLoading();
      await userRepository.deleteToken(id: 0);

      yield Unauthenticated();
    }
  }

}