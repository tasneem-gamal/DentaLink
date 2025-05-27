import 'package:dartz/dartz.dart';
import 'package:dentalink/core/networking/api_error_handler.dart';
import 'package:dentalink/features/home/data/apis/related_tools/related_tools_services.dart';
import 'package:dentalink/features/home/data/models/related_tools/related_tools_response.dart';

class RelatedToolsRepo {
  final RelatedToolsServices relatedToolsServices;
  RelatedToolsRepo(this.relatedToolsServices);
  Future<Either<Failure, RelatedToolsResponse>> getRelatedTools(String id) async {
    try {
      final response = await relatedToolsServices.relatedToolsServices();
      return right(response);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
