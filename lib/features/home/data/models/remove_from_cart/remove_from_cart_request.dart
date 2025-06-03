import 'package:dio/dio.dart';

class RemoveFromCartRequest {
  final String toolId;

  RemoveFromCartRequest({
    required this.toolId,
  });

  Future<FormData> toFormData() async {
    return FormData.fromMap({
      'tool_id': toolId,
    });
  }
}
