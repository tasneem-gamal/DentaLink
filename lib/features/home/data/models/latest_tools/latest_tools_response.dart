import 'package:dentalink/features/home/data/models/tools_data.dart';

class LatestToolsResponse {
  List<Tool>? latestTools;

  LatestToolsResponse({this.latestTools});

  factory LatestToolsResponse.fromJson(List<dynamic> json) {
    return LatestToolsResponse(
      latestTools: json.map((e) => Tool.fromJson(e)).toList(),
    );
  }
}
