import 'package:dio/dio.dart';

class AddToCartRequest {
  final String toolId;
  final int quantity;

  AddToCartRequest({
    required this.toolId,
    required this.quantity,
  });

  Future<FormData> toFormData() async {
    return FormData.fromMap({
      'tool_id': toolId,
      'quantity': quantity,
    });
  }
}
