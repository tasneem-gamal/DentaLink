import 'package:bloc/bloc.dart';
import 'package:dentalink/features/home/data/models/tools_data.dart';
import 'package:dentalink/features/home/data/repo/tools_search/tools_search_repo.dart';

part 'tools_search_state.dart';

class ToolsSearchCubit extends Cubit<ToolsSearchState> {
  final ToolsSearchRepo toolsSearchRepo;
  List<Tool> resultList = [];
  ToolsSearchCubit(this.toolsSearchRepo) : super(ToolsSearchInitial());
  void toolsSerarch() async {
    emit(ToolsSearchLoading());
    final response = await toolsSearchRepo.getToolsSearch();
    response.fold(
      (failure) {
        emit(ToolsSearchError(failure.errMessage));
      },
      (toolsSearchResponse) {
        resultList = toolsSearchResponse.results!;
        if (resultList.isEmpty) {
          emit(ToolsSearchEmpty());
        } else {
          emit(ToolsSearchLoaded(resultList));
        }
      },
    );
  }
}
