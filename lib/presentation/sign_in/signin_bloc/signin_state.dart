part of 'signin_bloc.dart';

@immutable
abstract class SignInState extends Equatable{

  const SignInState();

  @override
  List<Object> get props => [];
}

class SignInInitial extends SignInState {
  const SignInInitial();
}

class SignInLoading extends SignInState{
  const SignInLoading();
}

class SignInLoaded extends SignInState{
  const SignInLoaded();
}

class SignInError extends SignInState{
  final String message;
  const SignInError({@required this.message});


  @override
  String toString() => 'Login Failure {error: $message}';

  @override
  List<Object> get props => [message];
}
