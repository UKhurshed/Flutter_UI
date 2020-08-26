import 'package:flutter/material.dart';
import 'package:flutter_ui/data/model/app_user.dart';

abstract class UserRepository {
  Future<String> signIn({
    @required String email,
    @required String password,
  });

  Future<String> signUp({
    @required String firstName,
    @required String secondName,
    @required String email,
    @required String password,
  });


  Future<UserAuth> getUser();

  Future<void> forgotPassword({
  @required String email,
});
}
