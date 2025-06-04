import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/shared_preference.dart';
import 'package:dentalink/core/networking/api_constants.dart';
import 'package:dentalink/core/networking/dio_factory.dart';
import 'package:dentalink/features/home/data/models/cart_items/cart_items_response.dart';
import 'package:dio/dio.dart';

class CartItemsServices {
  late Dio dio;
  CartItemsServices() {
    dio = DioFactory.getDio();
  }
  Future<CartItemsResponse> cartItemsServices() async {
    try {
      final response = await dio.get(
        '${ApiConstants.baseUrl}${ApiConstants.cartItems}',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'authorization':
                'Bearer ${await SharedPreferenceHelper.getSecuredString(SharedPreferencesKeys.userToken)}',
          },
        ),
      );
      return CartItemsResponse.fromJson(response.data);
    } catch (e) {
      throw Exception("Unexpected error: ${e.toString()}");
    }
  }
}
