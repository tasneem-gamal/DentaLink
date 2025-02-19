import 'package:dentalink/core/networking/api_constants.dart';
import 'package:dentalink/core/networking/dio_factory.dart';
import 'package:dentalink/features/auth/forgot_password/data/apis/forgot_password_api_constants.dart';
import 'package:dio/dio.dart';

class ResendOtpApiService {
  late Dio dio;

  ResendOtpApiService(){
    dio = DioFactory.getDio();
  }

  Future<void> resendOtp(String email) async {
    await dio.post(
      '${ApiConstants.baseUrl}${ForgotPasswordApiConstants.forgotPassword}',
      data: {"email": email},
    );
  }
}