import 'package:bloc/bloc.dart';
import 'package:dentalink/features/home/data/repo/tools_by_id/tools_by_id_repo.dart';

import '../../data/models/tools_data.dart';

part 'tools_by_id_state.dart';

class ToolsByIdCubit extends Cubit<ToolsByIdState> {
  Tool? tool;
  final ToolsByIdRepo toolsByIdRepo;
  ToolsByIdCubit(this.toolsByIdRepo) : super(ToolsByIdInitial());

  void fetchToolById(String id) async {
    emit(ToolsByIdLoading());

    final response = await toolsByIdRepo.fetchToolsById(id);

    response.fold((failure) {
      emit(ToolsByIdError(error: failure.errMessage));
    }, (toolsByIdResponse) {
      tool = toolsByIdResponse.tool;
      if (tool != null) {
        emit(ToolsByIdLoaded(tool: tool!));
      } else {
        emit(ToolsByIdError(error: 'Tool not found'));
      }
    });
  }
}
