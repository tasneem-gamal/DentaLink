import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/shared_preference.dart';
import 'package:dentalink/core/networking/api_constants.dart';
import 'package:dentalink/core/networking/dio_factory.dart';
import 'package:dentalink/features/home/data/models/related_tools/related_tools_response.dart';
import 'package:dio/dio.dart';

class RelatedToolsServices {
  late Dio dio;
  RelatedToolsServices() {
    dio = DioFactory.getDio();
  }
  Future<RelatedToolsResponse> relatedToolsServices() async {
    try {
      final response = await dio.get(
        '${ApiConstants.baseUrl}${ApiConstants.relatedTools}',
        options: Options(
          headers: {
            'Authorization':
                'Bearer ${await SharedPreferenceHelper.getSecuredString(SharedPreferencesKeys.userToken)}',
          },
        ),
      );
      return RelatedToolsResponse.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to fetch related tools: $e');
    }
  }
}
