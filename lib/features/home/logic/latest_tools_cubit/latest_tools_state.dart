part of 'package:dentalink/features/home/logic/latest_tools_cubit/latest_tools_cubit.dart';
class LatestToolsState{}
class LatestToolsInitial extends LatestToolsState{}
class LatestToolsLoading extends LatestToolsState{}
class LatestToolsLoaded extends LatestToolsState{
  final List<Tool> latestTools;
  LatestToolsLoaded(this.latestTools);
}
class LatestToolsError extends LatestToolsState{
  final String errMessage;
  LatestToolsError(this.errMessage);
}