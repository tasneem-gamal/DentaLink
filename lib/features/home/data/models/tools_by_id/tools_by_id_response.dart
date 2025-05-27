import 'package:dentalink/features/home/data/models/tools_data.dart';

class ToolsByIdResponse {
  final String? message;
  final Tool? tool;
  ToolsByIdResponse({this.message, this.tool});

  factory ToolsByIdResponse.fromjson(Map<String, dynamic> json) {
    return ToolsByIdResponse(
        message: json['message'],
        tool: json['tool'] != null ? Tool.fromJson(json['tool']) : null);
  }
}
