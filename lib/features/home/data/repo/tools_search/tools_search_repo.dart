import 'package:dartz/dartz.dart';
import 'package:dentalink/core/networking/api_error_handler.dart';
import 'package:dentalink/features/home/data/apis/tools_search/tools_search_services.dart';
import 'package:dentalink/features/home/data/models/tools_search/tools_search_response.dart';

class ToolsSearchRepo {
  final ToolsSearchServices toolsSearchServices;
  ToolsSearchRepo(this.toolsSearchServices);
  Future<Either<Failure, ToolsSearchResponse>> getToolsSearch() async {
    try {
      final response = await toolsSearchServices.toolsSearchServices();
      return right(response);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
