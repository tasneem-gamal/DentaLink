import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/shared_preference.dart';
import 'package:dentalink/core/networking/api_constants.dart';
import 'package:dentalink/core/networking/dio_factory.dart';
import 'package:dentalink/features/home/data/models/remove_from_cart/remove_from_cart_request.dart';
import 'package:dentalink/features/home/data/models/remove_from_cart/remove_from_cart_response.dart';
import 'package:dio/dio.dart';

class RemoveFromCartServices {
  late Dio dio;

  RemoveFromCartServices() {
    dio = DioFactory.getDio();
  }

  Future<RemoveFromCartResponse> removeFromCartServices(
      RemoveFromCartRequest removeFromCartRequest) async {
    final toolId = removeFromCartRequest.toolId;

    String? userToken = await SharedPreferenceHelper.getSecuredString(
        SharedPreferencesKeys.userToken);
    if (userToken == null || userToken.isEmpty) {
      throw Exception("No Token Found! User not authenticated.");
    }

    final response = await dio.delete(
      '${ApiConstants.baseUrl}${ApiConstants.removeFromCart}',
      data: {
        "toolId": toolId,
      },
      options: Options(
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $userToken',
        },
      ),
    );
    return RemoveFromCartResponse.fromJson(response.data);
  }
}
