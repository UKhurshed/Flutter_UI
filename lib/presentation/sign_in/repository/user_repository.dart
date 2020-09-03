import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ui/presentation/sign_in/dao/dao.dart';
import 'package:flutter_ui/presentation/sign_in/model/api_model.dart';
import 'package:flutter_ui/presentation/sign_in/model/user_auth.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  final UserDao userDao = UserDao();

  Future<UserAuth> authenticate(
      {@required String email, @required String password}) async {
    UserLogin userLogin = UserLogin(email: email, password: password);
    Token token = await getToken(userLogin);

    UserAuth userAuth = UserAuth(
      id: 0,
      email: email,
      token: token.token
    );
    return userAuth;
  }

  Future<void> persistToken({@required UserAuth user}) async {
    // write token with the user to the database
    await userDao.createUser(user);
  }

  Future<void> deleteToken({@required int id}) async {
    await userDao.deleteUser(id);
  }

  Future<bool> hasToken() async {
    bool result = await userDao.checkUser(0);
    return result;
  }
}

final URL = "https://vvmarket.abr.tj/api/v1/authorization/get/token/";
var headers = {'Content-Type': 'application/json'};
Future<Token> getToken(UserLogin userLogin) async {
  final http.Response response = await http.post(URL,
      headers: headers, body: jsonEncode(userLogin.toJson()));
  if (response.statusCode == 200) {
    return Token.fromJson(json.decode(response.body));
  } else {
    print(jsonDecode(response.body));
    throw Exception(json.decode(response.body));
  }
}
