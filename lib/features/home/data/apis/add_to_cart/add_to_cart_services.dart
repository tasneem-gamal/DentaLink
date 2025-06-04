import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/shared_preference.dart';
import 'package:dentalink/core/networking/api_constants.dart';
import 'package:dentalink/core/networking/dio_factory.dart';
import 'package:dentalink/features/home/data/models/add_to_cart/add_to_cart_request.dart';
import 'package:dentalink/features/home/data/models/add_to_cart/add_to_cart_response.dart';
import 'package:dio/dio.dart';

class AddToCartServices {
  late Dio dio;
  AddToCartServices() {
    dio = DioFactory.getDio();
  }

  Future<AddToCartResponse> addToCart(AddToCartRequest addToCartRequest) async {
    final String toolId = addToCartRequest.toolId;
    final int quantity = addToCartRequest.quantity;
    String? userToken = await SharedPreferenceHelper.getSecuredString(
        SharedPreferencesKeys.userToken);

    if (userToken == null || userToken.isEmpty) {
      throw Exception("No token found! User not authenticated.");
    }
    final response = await dio.post(
      '${ApiConstants.baseUrl}${ApiConstants.addToCart}',
      data: {
        "toolId": toolId,
        "quantity": quantity,
      },
      options: Options(
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json",
          "Authorization": "Bearer $userToken",
        },
      ),
    );
    return AddToCartResponse.fromJson(response.data);
  }
}
