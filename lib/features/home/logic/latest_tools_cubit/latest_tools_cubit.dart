import 'package:bloc/bloc.dart';
import 'package:dentalink/features/home/data/models/tools_data.dart';
import 'package:dentalink/features/home/data/repo/latest_tools/latest_tools_repo.dart';

part 'latest_tools_state.dart';

class LatestToolsCubit extends Cubit<LatestToolsState> {
  final LatestToolsRepo latestToolsRepo;
  List<Tool> latestToolsList = [];
  LatestToolsCubit(this.latestToolsRepo) : super(LatestToolsInitial());
  void getLatestTools() async {
    emit(LatestToolsLoading());
    final response = await latestToolsRepo.getLatestTools();
    response.fold(
      (failure) {
        emit(LatestToolsError(failure.errMessage));
      },
      (latestToolsResponse) {
        latestToolsList = latestToolsResponse.latestTools!;
        emit(LatestToolsLoaded(latestToolsList));
      },
    );
  }
}
