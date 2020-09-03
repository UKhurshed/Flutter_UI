part of 'signin_bloc.dart';

@immutable
abstract class SignInEvent extends Equatable {
  const SignInEvent();
}

class GetUser extends SignInEvent{
  final String email;
  final String password;

   GetUser({@required this.email, @required this.password});

  @override
  List<Object> get props => [email, password];
}
