import 'package:dentalink/features/home/data/models/tools_data.dart';

class ToolsSearchResponse {
  final List<Tool>? results;

  ToolsSearchResponse({this.results});

  factory ToolsSearchResponse.fromJson(List<dynamic> json) {
    return ToolsSearchResponse(
      results: json.map((e) => Tool.fromJson(e)).toList(),
    );
  }
}
