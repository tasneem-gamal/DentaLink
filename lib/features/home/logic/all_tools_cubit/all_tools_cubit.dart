import 'package:bloc/bloc.dart';
import 'package:dentalink/features/home/data/models/tools_data.dart';
import 'package:dentalink/features/home/data/repo/all_tools/all_tools_repo.dart';

part 'all_tools_state.dart';

class AllToolsCubit extends Cubit<AllToolsState> {
  List<Tool>? toolsList = [];
  AllToolsRepo allToolsRepo;

  AllToolsCubit(this.allToolsRepo) : super(AllToolsInitial());

  void getAllTools() async {
    emit(AllToolsLoading());
    final response = await allToolsRepo.getAllTools();
    response.fold((failure) {
      emit(AllToolsError(errMessage: (failure.errMessage)));
    }, (allToolsResponse) {
      toolsList = allToolsResponse.tools;
      if (toolsList != null) {
        if (toolsList!.isEmpty) {
          emit(AllToolsEmpty());
        } else {
          emit(AllToolsLoaded(tools: toolsList!));
        }
      } else {
        emit(AllToolsNoInternet(errMessage: 'No internet connection'));
      }
    });
  }
}
