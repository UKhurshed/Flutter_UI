import 'package:bloc/bloc.dart';
import 'package:flutter_ui/data/model/app_user.dart';
import 'package:flutter_ui/presentation/sign_in/model/user_repository.dart';
import 'package:meta/meta.dart';

part 'signin_state.dart';

class SignInCubit extends Cubit<SignInState> {
  final UserRepository _userRepository;
  SignInCubit(this._userRepository) : super(SignInInitial());

  Future<void> getUser(String email, String password) async{
    try{
      emit(SignInLoading());
      final userAuth = await _userRepository.fetchUser(email, password);
      emit(SignInLoaded(userAuth));
    }on NetworkException{

    }
  }
}
