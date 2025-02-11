import 'package:dentalink/core/networking/api_constants.dart';
import 'package:dentalink/features/auth/sign_up/data/apis/sign_api_constants.dart';
import 'package:dentalink/features/auth/sign_up/data/models/sign_request_body.dart';
import 'package:dentalink/features/auth/sign_up/data/models/sign_response_body.dart';
import 'package:dio/dio.dart';

class SignApiService {
  final Dio dio;

  SignApiService(this.dio);

  Future<SignResponseBody> signUp(SignRequestBody signRequestBody) async{
    final response = await dio.post(
      '${ApiConstants.baseUrl}${SignApiConstants.signUp}',
      data: signRequestBody.toJson()
    );
    return SignResponseBody.fromJson(response.data);
  }
}