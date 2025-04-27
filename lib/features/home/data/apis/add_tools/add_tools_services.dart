import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/shared_preference.dart';
import 'package:dentalink/core/networking/api_constants.dart';
import 'package:dentalink/features/home/data/models/add_tools/add_tool_request.dart';
import 'package:dentalink/features/home/data/models/add_tools/add_tool_response.dart';
import 'package:dio/dio.dart';

Map<String, String> headers = {
  "Accept": "application/json",
  "Content-Type": "multipart/form-data",
  "Authorization":
      "Bearer ${SharedPreferenceHelper.getSecuredString(SharedPreferencesKeys.userToken)}",
};

class AddToolsServices {
  final Dio dio;

  AddToolsServices({required this.dio});
  Future<AddToolResponse> addTools(AddToolRequest addToolRequest) async {
    final formData = await addToolRequest.toFormData();

    final String? usertoken = await SharedPreferenceHelper.getSecuredString(
        SharedPreferencesKeys.userToken);

    if (usertoken == null || usertoken.isEmpty) {
      throw Exception("No token found! User not authenticated.");
    }

    Response response = await dio.post(
      '${ApiConstants.baseUrl}${ApiConstants.addTools}',
      data: formData,
      options: Options(headers: headers),
    );
    return AddToolResponse.fromJson(response.data);
  }
}
