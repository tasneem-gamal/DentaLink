import 'package:dentalink/features/home/data/models/tools_data.dart';
import 'package:dentalink/features/home/data/repo/related_tools/related_tools_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'related_tools_state.dart';

class RelatedToolsCubit extends Cubit<RelatedToolsState> {
  RelatedToolsRepo relatedToolsRepo;
  List<Tool> relatedToolsList = [];
  RelatedToolsCubit(this.relatedToolsRepo) : super(RelatedToolsInitial());
  void getRelatedTools(String id) async {
    emit(RelatedToolsLoading());
    final response = await relatedToolsRepo.getRelatedTools(id);
    response.fold(
      (failure) {
        emit(RelatedToolsError(failure.errMessage));
      },
      (relatedToolsResponse) {
        relatedToolsList = relatedToolsResponse.relatedTools;
        emit(RelatedToolsLoaded(relatedToolsList));
      },
    );
  }
}
