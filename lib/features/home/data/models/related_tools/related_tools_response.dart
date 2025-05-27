import 'package:dentalink/features/home/data/models/tools_data.dart';

class RelatedToolsResponse {
  List<Tool> relatedTools;

  RelatedToolsResponse({required this.relatedTools});
  factory RelatedToolsResponse.fromJson(List<dynamic> json) {
    return RelatedToolsResponse(
      relatedTools: json.map((e) => Tool.fromJson(e)).toList(),
    );
  }
}
