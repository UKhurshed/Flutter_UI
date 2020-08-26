import 'package:bloc/bloc.dart';
import 'package:flutter_ui/config/storage.dart';
import 'package:flutter_ui/presentation/features/authentication/authentication.dart';

import 'authentication.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState>{
  AuthenticationBloc(AuthenticationState initialState) : super(Uninitialized());

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent event) async*{

    if (event is AppStarted){
      var token = await _getToken();
      if(token != ''){
        Storage().token = token;
        yield Authenticated();
      } else{
        yield Unauthenticated();
      }
    }

    if (event is LoggedIn){
      Storage().token = event.token;
      await _saveToken(event.token);
      yield Authenticated();
    }

    if(event is LoggedOut){
      Storage().token = '';
      await _deleteToken();
      yield Unauthenticated();
    }
  }
}

Future<void> _deleteToken() async{
  await Storage().secureStorage.delete(key: 'access_token');
}

Future<String> _getToken() async{
  return await Storage().secureStorage.read(key: 'access_token') ?? '';
}

Future<void> _saveToken(String token) async{
  await Storage().secureStorage.write(key: 'access_token', value: token);
}
