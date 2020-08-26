import 'package:flutter/cupertino.dart';
import 'package:flutter_ui/data/model/app_user.dart';
import 'package:flutter_ui/data/response_request/repositories/remote_user_repository.dart';
import 'package:flutter_ui/data/repositories/abstract/user_repository.dart';

class UserRepositoryImpl extends UserRepository{

  final RemoteUserRepository remoteUserRepository;
  UserRepositoryImpl({@required this.remoteUserRepository});
  
  @override
  Future<void> forgotPassword({String email}) {
    // TODO: implement forgotPassword
    throw UnimplementedError();
  }

  @override
  Future<UserAuth> getUser() async{
    try{
        return remoteUserRepository.getUser();
    }catch(error){
      rethrow;
    }
  }

  @override
  Future<String> signIn({String email, String password}) async{
    return remoteUserRepository.signIn(email: email, password: password);
  }

  @override
  Future<String> signUp({String firstName, String secondName, String email, String password}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

}