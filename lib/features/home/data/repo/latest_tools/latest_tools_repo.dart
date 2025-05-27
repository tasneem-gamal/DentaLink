import 'package:dartz/dartz.dart';
import 'package:dentalink/core/networking/api_error_handler.dart';
import 'package:dentalink/features/home/data/apis/latest_tools/latest_tools_services.dart';
import 'package:dentalink/features/home/data/models/latest_tools/latest_tools_response.dart';

class LatestToolsRepo {
  final LatestToolsServices latestToolsServices;
  LatestToolsRepo(this.latestToolsServices);
  Future<Either<Failure, LatestToolsResponse>> getLatestTools() async {
    try {
      final response = await latestToolsServices.latestToolsServices();
      return right(response);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
