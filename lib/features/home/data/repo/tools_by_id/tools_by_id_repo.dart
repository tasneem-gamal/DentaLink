import 'package:dartz/dartz.dart';
import 'package:dentalink/features/home/data/apis/tools_by_id/tools_id_services.dart';
import 'package:dentalink/features/home/data/models/tools_by_id/tools_by_id_response.dart';

import '../../../../../core/networking/api_error_handler.dart';

class ToolsByIdRepo {
  final ToolsByIdServices toolsByIdServices;
  ToolsByIdRepo(this.toolsByIdServices);
  Future<Either<dynamic, ToolsByIdResponse>> fetchToolsById(String id) async {
    try {
      final response = await toolsByIdServices.toolsByIdServices(id);
      return right(response);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
