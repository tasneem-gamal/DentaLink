import 'package:dentalink/core/networking/api_constants.dart';
import 'package:dentalink/core/networking/dio_factory.dart';
import 'package:dentalink/features/home/data/models/all_tools/all_tools_response.dart';
import 'package:dio/dio.dart';

class AllToolsServices {
  late final Dio dio;
  allToolsServices() {
    dio = DioFactory.getDio();
  }

  Future<AllToolsResponse> allToolsService() async {
    try {
      final response = await dio.get(
        '${ApiConstants.baseUrl}${ApiConstants.allTools}',
        options: Options(headers: headers),
      );
      return AllToolsResponse.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to load tools: $e');
    }
  }
}
