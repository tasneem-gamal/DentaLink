import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/shared_preference.dart';
import 'package:dentalink/core/networking/api_constants.dart';
import 'package:dentalink/core/networking/dio_factory.dart';
import 'package:dentalink/features/home/data/models/tools_by_id/tools_by_id_response.dart';
import 'package:dio/dio.dart';

class ToolsByIdServices {
  late Dio dio;
  ToolsByIdServices() {
    dio = DioFactory.getDio();
  }
  Future<ToolsByIdResponse> toolsByIdServices(String id) async {
    try {
      final response = await dio.get(
        '${ApiConstants.baseUrl}tools/$id',
        options: Options(headers: {
          "Accept": "application/json",
          "Content-Type": "multipart/form-data",
          "Authorization":
              "Bearer ${await SharedPreferenceHelper.getSecuredString(SharedPreferencesKeys.userToken)}",
        }),
      );
      return ToolsByIdResponse.fromjson(response.data);
    } catch (e) {
      throw Exception('Failed to load tools by ID: $e');
    }
  }
}
