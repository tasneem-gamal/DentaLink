import 'package:dentalink/features/home/data/models/cart_item_model.dart';

class AddToCartResponse {
  final String? message;
  final CartItemModel? item;

  AddToCartResponse({
    required this.message,
    required this.item,
  });

  factory AddToCartResponse.fromJson(Map<String, dynamic> json) {
    return AddToCartResponse(
        message: json['message'],
        item: (json['item'] != null
            ? CartItemModel.fromJson(json['item'])
            : null));
  }
}
