// import 'package:dentalink/features/home/data/models/tools_data.dart';

class AddToolResponse {
  final String? message;
  final ToolData? toolData;

  AddToolResponse({this.message, this.toolData});

  factory AddToolResponse.fromJson(Map<String, dynamic> json) {
    return AddToolResponse(
      message: json['message'],
      toolData: json['tool'] != null ? ToolData.fromJson(json['tool']) : null,
    );
  }
}

class ToolData {
  final String name;
  final double? price;
  final String description;
  final List<String> images;
  final String createdBy;
  final String id;
  final String createdAt;
  final String updatedAt;
  final int v;

  ToolData(
      {required this.name,
      required this.price,
      required this.description,
      required this.images,
      required this.createdBy,
      required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.v});

  factory ToolData.fromJson(Map<String, dynamic> json) {
    return ToolData(
        name: json['name'],
        price: json['price'],
        description: json['description'],
        images: json['images'],
        createdBy: json['createdBy'],
        id: json['_id'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        v: json['__v']);
  }
}
