part of 'signin_bloc.dart';

@immutable
abstract class SignInEvent {}

class GetUser extends SignInEvent{
  final String email;
  final String password;

  GetUser({this.email, this.password});
}
