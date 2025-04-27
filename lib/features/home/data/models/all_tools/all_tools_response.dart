class Tool {
  final String id;
  final String name;
  final String title;
  final String category;
  final String location;
  final String description;
  final List<String> images;
  final CreatedBy createdBy;
  final String createdAt;
  final String updatedAt;
  final int v;
  final bool isFavTools;

  Tool({
    required this.id,
    required this.title,
    required this.category,
    required this.location,
    required this.images,
    required this.createdBy,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    required this.isFavTools,
    required this.name,
    required this.description,
  });

  factory Tool.fromJson(Map<String, dynamic> json) {
    return Tool(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      title: json['title'] ?? '',
      category: json['category'] ?? '',
      location: json['location'] ?? '',
      description: json['description'] ?? '',
      images: List<String>.from(json['images'] ?? []),
      createdBy: CreatedBy.fromJson(json['createdBy'] ?? {}),
      createdAt: json['createdAt'] ?? '',
      updatedAt: json['updatedAt'] ?? '',
      v: json['v'] ?? 0,
      isFavTools: json['isFavTools'] ?? false,
    );
  }
}

class AllToolsResponse {
  final List<Tool> tools;

  AllToolsResponse({required this.tools});

  factory AllToolsResponse.fromJson(Map<String, dynamic> json) {
    return AllToolsResponse(
      tools:
          (json['tools'] as List).map((tool) => Tool.fromJson(tool)).toList(),
    );
  }
}

class CreatedBy {
  final String id;
  final String name;
  final String email;

  CreatedBy({required this.id, required this.name, required this.email});

  factory CreatedBy.fromJson(Map<String, dynamic> json) {
    return CreatedBy(
      id: json['_id'],
      name: json['name'],
      email: json['email'],
    );
  }
}
