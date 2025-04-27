import 'package:dartz/dartz.dart';
import 'package:dentalink/core/networking/api_error_handler.dart';
import 'package:dentalink/features/home/data/apis/add_tools/add_tools_services.dart';
import 'package:dentalink/features/home/data/models/add_tools/add_tool_request.dart';
import 'package:dentalink/features/home/data/models/add_tools/add_tool_response.dart';
import 'package:dio/dio.dart';

class AddToolRepo {
  final AddToolsServices addToolService;

  AddToolRepo(this.addToolService);

  Future<Either<Failure, AddToolResponse>> addNewTool(
      AddToolRequest addToolRequest) async {
    try {
      final response = await addToolService.addTools(addToolRequest);
      return right(response);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure("Unexpected error: ${e.toString()}"));
    }
  }
}
