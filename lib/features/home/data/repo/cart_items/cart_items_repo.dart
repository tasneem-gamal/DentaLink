import 'package:dartz/dartz.dart';
import 'package:dentalink/core/networking/api_error_handler.dart';
import 'package:dentalink/features/home/data/apis/cart_items/cart_items_services.dart';
import 'package:dentalink/features/home/data/models/cart_items/cart_items_response.dart';

class CartItemsRepo {
  final CartItemsServices cartItemsServices;

  CartItemsRepo(this.cartItemsServices);

  Future<Either<Failure, CartItemsResponse>> getCartItems() async {
    try {
      final response = await cartItemsServices.cartItemsServices();
      return right(response);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
