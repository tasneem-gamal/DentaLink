import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/shared_preference.dart';
import 'package:dentalink/core/networking/api_constants.dart';
import 'package:dentalink/core/networking/dio_factory.dart';
import 'package:dentalink/features/home/data/models/tools_search/tools_search_response.dart';
import 'package:dio/dio.dart';

class ToolsSearchServices {
  late Dio dio;
  ToolsSearchServices() {
    dio = DioFactory.getDio();
  }
  Future<ToolsSearchResponse> toolsSearchServices() async {
    try {
      final response = await dio.get(
        '${ApiConstants.baseUrl}${ApiConstants.toolsSearch}',
        options: Options(
          headers: {
            'Authorization':
                'Bearer ${await SharedPreferenceHelper.getSecuredString(SharedPreferencesKeys.userToken)}',
          },
        ),
      );
      return ToolsSearchResponse.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to fetch tools search: $e');
    }
  }
}
