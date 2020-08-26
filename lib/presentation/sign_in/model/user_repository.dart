import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_ui/data/model/app_user.dart';

abstract class UserRepository {
  Future<UserAuth> fetchUser(String email, String password);
}

class UserRepositoryImpl implements UserRepository {
  @override
  Future<UserAuth> fetchUser(String email, String password) async {
    final URL = "https://vvmarket.abr.tj/api/v1/authorization/get/token/";
    Map<String, String> headers = {'Content-Type': 'application/json'};
   // Map<String, dynamic> jsonBody = jsonEncode({"Email": email, "Password": password}) as Map<String, dynamic>;

    final http.Response response =
        await http.post(URL, headers: headers, body: jsonEncode(<String, String>{"Email": email, "Password": password}));
    int statusCode = response.statusCode;
    String responseBody = response.body;
    print("$statusCode\n");
    print("Body $responseBody");
    if (statusCode == 200) {
      return UserAuth.fromJson(json.decode(responseBody));
    } else {
      throw NetworkException();
    }
  }
}

class NetworkException implements Exception{}