import 'package:dentalink/core/networking/api_constants.dart';
import 'package:dentalink/core/networking/dio_factory.dart';
import 'package:dentalink/features/profile/data/sign_out/models/sign_out_request_body.dart';
import 'package:dentalink/features/profile/data/sign_out/models/sign_out_response_body.dart';
import 'package:dio/dio.dart';

class SignOutApiService {
  late Dio dio;
  SignOutApiService(){
    dio = DioFactory.getDio();
  }

  Future<SignOutResponseBody> login(SignOutRequestBody signOutRequestBody) async{
    final response = await dio.post(
      '${ApiConstants.baseUrl}${ApiConstants.signOut}',
      data: signOutRequestBody.toJson()
    );
    return SignOutResponseBody.fromJson(response.data);
  }
}