import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_ui/data/model/app_user.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_ui/data/repositories/abstract/user_repository.dart';

class RemoteUserRepository extends UserRepository {
  @override
  Future<String> signIn(
      {@required String email, @required String password}) async {
    var route = "https://vvmarket.abr.tj/api/v1/authorization/get/token/";
    Map<String, String> headers = {"Content-Type": "application/json"};
    Map<String, dynamic> jsonBody = json
        .encode({"Email": email, "Password": password}) as Map<String, dynamic>;

    final http.Response response =
        await http.post(route, body: jsonBody, headers: headers);
    Map jsonResponse = json.decode(response.body);

    if (response.statusCode != 200) {
      throw jsonResponse['body'];
    } else {
      return jsonResponse['token'];
    }
  }

  @override
  Future<void> forgotPassword({String email}) {
    // TODO: implement forgotPassword
    throw UnimplementedError();
  }

  @override
  Future<UserAuth> getUser() async{
    try{
      await Future.delayed(Duration(seconds: 2));
      return UserAuth();
    }catch(error){
      rethrow;
    }
  }

  @override
  Future<String> signUp({String firstName, String secondName, String email, String password}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
