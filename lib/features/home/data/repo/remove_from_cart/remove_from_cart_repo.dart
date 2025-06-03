import 'package:dartz/dartz.dart';
import 'package:dentalink/core/networking/api_error_handler.dart';
import 'package:dentalink/features/home/data/apis/remove_from_cart/remove_from_cart_services.dart';
import 'package:dentalink/features/home/data/models/remove_from_cart/remove_from_cart_request.dart';
import 'package:dentalink/features/home/data/models/remove_from_cart/remove_from_cart_response.dart';
import 'package:dio/dio.dart';

class RemoveFromCartRepo {
  final RemoveFromCartServices removeFromCartServices;
  RemoveFromCartRepo(this.removeFromCartServices);
  Future<Either<Failure, RemoveFromCartResponse>> removeFromCart(
      RemoveFromCartRequest removeFromCartRequest) async {
    try {
      final response = await removeFromCartServices
          .removeFromCartServices(removeFromCartRequest);
      return right(response);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure("Unexpected error: ${e.toString()}"));
    }
  }
}
