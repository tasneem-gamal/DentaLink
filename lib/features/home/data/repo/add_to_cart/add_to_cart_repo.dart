import 'package:dartz/dartz.dart';
import 'package:dentalink/core/networking/api_error_handler.dart';
import 'package:dentalink/features/home/data/apis/add_to_cart/add_to_cart_services.dart';
import 'package:dentalink/features/home/data/models/add_to_cart/add_to_cart_request.dart';
import 'package:dentalink/features/home/data/models/add_to_cart/add_to_cart_response.dart';
import 'package:dio/dio.dart';

class AddToCartRepo {
  final AddToCartServices addToCartServices;
  AddToCartRepo(this.addToCartServices);
  Future<Either<Failure, AddToCartResponse>> addToCart(
      AddToCartRequest addToCartRequest) async {
    try {
      final response = await addToCartServices.addToCart(addToCartRequest);
      return right(response);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure("Unexpected error: ${e.toString()}"));
    }
  }
}
