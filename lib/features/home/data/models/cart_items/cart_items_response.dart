import 'package:dentalink/features/home/data/models/cart_item_model.dart';

class CartItemsResponse {
  final List<CartItemModel> items;

  CartItemsResponse({
    required this.items,
  });

  factory CartItemsResponse.fromJson(Map<String, dynamic> json) {
    return CartItemsResponse(
      items: (json['items'] as List)
          .map((t) => CartItemModel.fromJson(t))
          .toList(),
    );
  }
}
