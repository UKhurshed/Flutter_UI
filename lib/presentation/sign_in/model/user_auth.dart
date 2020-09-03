import 'package:equatable/equatable.dart';

class UserAuth extends Equatable {
  UserAuth({
    this.id,
    this.message,
    this.status,
    this.token,
    this.email,
  });

  final int id;
  final String message;
  final int status;
  final String token;
  final String email;

  factory UserAuth.fromJson(Map<String, dynamic> json) {
    return UserAuth(
        message: json["message"],
        status: json["status"],
        token: json["token"],
        email: json["username"]);
  }

  Map<String, dynamic> toJson() => {"email": this.email, "token": this.token};

  @override
  List<Object> get props => [id, message, status, token, email];
}
