import 'package:dentalink/features/home/data/models/cart_item_model.dart';

class RemoveFromCartResponse {
  final String? message;
  final CartItemModel? item;

  RemoveFromCartResponse({
    required this.message,
    required this.item,
  });

  factory RemoveFromCartResponse.fromJson(Map<String, dynamic> json) {
    return RemoveFromCartResponse(
      message: json['message'],
      item: CartItemModel.fromJson(json['item']),
    );
  }
}
