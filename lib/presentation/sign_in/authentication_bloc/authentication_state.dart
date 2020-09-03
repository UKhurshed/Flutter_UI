part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationState extends Equatable {


  const AuthenticationState();

  @override
  List<Object> get props => [];
}

class Uninitialized extends AuthenticationState {
  const Uninitialized();
}

class Authenticated extends AuthenticationState{
  const Authenticated();
}

class Unauthenticated extends AuthenticationState{
  const Unauthenticated();
}

class AuthenticateLoading extends AuthenticationState{
  const AuthenticateLoading();
}

