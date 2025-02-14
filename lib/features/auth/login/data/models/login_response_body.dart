class LoginResponseBody {
  final String? accessToken;
  final String? refreshToken;

  LoginResponseBody({required this.accessToken, required this.refreshToken});

  factory LoginResponseBody.fromJson(Map<String, dynamic> json){
    return LoginResponseBody(
      accessToken: json['accessToken'], 
      refreshToken: json['refreshToken'], 
    );
  }
}