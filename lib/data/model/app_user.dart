class UserAuth {
  UserAuth({
    this.message,
    this.status,
    this.token,
    this.username,
  });

  final String message;
  final int status;
  final String token;
  final String username;

  factory UserAuth.fromJson(Map<String, dynamic> json){
    return UserAuth(
      message: json["message"],
      status: json["status"],
      token: json["token"],
      username: json["username"]
    );
  }

}



