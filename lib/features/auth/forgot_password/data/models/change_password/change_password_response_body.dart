class ChangePasswordResponseBody {
  final String message;

  ChangePasswordResponseBody({required this.message});

  factory ChangePasswordResponseBody.fromJson(Map<String, dynamic> json){
    return ChangePasswordResponseBody(
      message: json['message']
    );
  }
}