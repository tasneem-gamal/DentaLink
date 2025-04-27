import 'package:dartz/dartz.dart';
import 'package:dentalink/core/networking/api_error_handler.dart';
import 'package:dentalink/features/home/data/apis/all_tools/all_tools_services.dart';
import 'package:dentalink/features/home/data/models/all_tools/all_tools_response.dart';

class AllToolsRepo {
  final AllToolsResponse allToolsResponse;
  AllToolsRepo(this.allToolsResponse);
  Future<Either<ServerFailure, AllToolsResponse>> getAllTools() async {
    try {
      final allToolsServices = AllToolsServices();
      final response = await allToolsServices.allToolsService();
      return right(response);
    } catch (e){
      return left(ServerFailure(e.toString()));
    }
  }
}