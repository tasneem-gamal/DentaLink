import 'package:dentalink/features/home/data/models/tools_data.dart';

class LatestToolsResponse {
  final List<Tool>? latestTools;

  LatestToolsResponse({this.latestTools});

  factory LatestToolsResponse.fromjson(List<dynamic> json) {
    return LatestToolsResponse(
      latestTools: json.map((e) => Tool.fromJson(e)).toList(),
    );
  }
}
