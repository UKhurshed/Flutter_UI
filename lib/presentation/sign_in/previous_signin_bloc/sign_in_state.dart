
import 'package:equatable/equatable.dart';

abstract class SignInState extends Equatable{
    const SignInState();

  @override
  List<Object> get props => [];
}

class SignInInitialState extends SignInState{
  const SignInInitialState();
}

class SignInProcessState extends SignInState{
  const SignInProcessState();
}

class SignInErrorState extends SignInState{
  final String error;

  const SignInErrorState(this.error);

  @override
  List<Object> get props => [error];
}

class SignInLoading extends SignInState{
  const SignInLoading();
}

class SignInFinishedState extends SignInState{
  const SignInFinishedState();
}