part of 'signin_bloc.dart';

@immutable
abstract class SignInState {
  const SignInState();
}

class SignInInitial extends SignInState {
  const SignInInitial();
}

class SignInLoading extends SignInState{
  const SignInLoading();
}

class SignInLoaded extends SignInState{
  final UserAuth userAuth;
  const SignInLoaded(this.userAuth);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is SignInLoaded && o.userAuth == userAuth;
  }

  @override
  int get hashCode => userAuth.hashCode;
}

class SignInError extends SignInState{
  final String message;
  const SignInError(this.message);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is SignInError && o.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
