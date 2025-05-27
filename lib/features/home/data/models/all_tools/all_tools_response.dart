import 'package:dentalink/features/home/data/models/tools_data.dart';

class AllToolsResponse {
  final List<Tool> tools;

  AllToolsResponse({required this.tools});

  factory AllToolsResponse.fromJson(List<dynamic> json) {
    return AllToolsResponse(
      tools: json.map((t) => Tool.fromJson(t)).toList(),
    );
  }
}
