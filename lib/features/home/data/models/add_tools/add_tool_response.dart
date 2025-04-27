class AddToolResponse {
  final String? message;
  final Tool? tool;

  AddToolResponse({this.message, this.tool});

  factory AddToolResponse.fromJson(Map<String, dynamic> json) {
    return AddToolResponse(
      message: json['message'],
      tool: json['tool'] != null ? Tool.fromJson(json['tool']) : null,
    );
  }
}

class Tool {
  final String name;
  final String description;
  final List<String> images;
  final String createdBy;
  final String id;
  final String createdAt;
  final String updatedAt;
  final int v;

  Tool(
      {required this.name,
      required this.description,
      required this.images,
      required this.createdBy,
      required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.v});

  factory Tool.fromJson(Map<String, dynamic> json) {
    return Tool(
        name: json['name'],
        description: json['description'],
        images: json['images'],
        createdBy: json['createdBy'],
        id: json['_id'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        v: json['__v']);
  }
}
