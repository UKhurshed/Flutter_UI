part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationEvent extends Equatable{
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends AuthenticationEvent{
  const AppStarted();
}

class LoggedIn extends AuthenticationEvent{
  final UserAuth userAuth;
  const LoggedIn({@required this.userAuth});

  @override
  List<Object> get props => [userAuth];
}

class LoggedOut extends AuthenticationEvent{
  const LoggedOut();
}
