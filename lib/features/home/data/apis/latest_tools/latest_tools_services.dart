import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/shared_preference.dart';
import 'package:dentalink/core/networking/api_constants.dart';
import 'package:dentalink/core/networking/dio_factory.dart';
import 'package:dentalink/features/home/data/models/latest_tools/latest_tools_response.dart';
import 'package:dio/dio.dart';

class LatestToolsServices {
  late Dio dio;
  LatestToolsServices() {
    dio = DioFactory.getDio();
  }
  Future<LatestToolsResponse> latestToolsServices() async {
    try {
      final response = await dio.get(
        '${ApiConstants.baseUrl}${ApiConstants.latestTools}',
        options: Options(
          headers: {
            'Authorization':
                'Bearer ${await SharedPreferenceHelper.getSecuredString(SharedPreferencesKeys.userToken)}',
          },
        ),
      );
      return LatestToolsResponse.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to fetch latest tools: $e');
    }
  }
}
