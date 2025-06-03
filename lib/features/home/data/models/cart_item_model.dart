class CartItemModel {
  final CartTool tool;
  final int quantity;

  CartItemModel({
    required this.tool,
    required this.quantity,
  });

  factory CartItemModel.fromJson(Map<String, dynamic> json) {
    return CartItemModel(
      tool: CartTool.fromJson(json['tool'] ?? {}),
      quantity: (json['quantity'] as int?) ?? 0,
    );
  }
}

class CartTool {
  final String id;
  final String name;
  final String description;
  final int price;
  final List<String> images;

  CartTool({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.images,
  });

  factory CartTool.fromJson(Map<String, dynamic> json) {
    return CartTool(
      id: json['_id'] ?? '',
      name: json['toolName'] ?? '',
      description: json['description'] ?? '',
      price: (json['price'] as int?) ?? 0,
      images: (json['images'] as List<dynamic>? ?? [])
          .map((e) => e.toString())
          .toList(),
    );
  }
}
