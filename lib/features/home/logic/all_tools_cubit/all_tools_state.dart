part of 'all_tools_cubit.dart';
class AllToolsState {}
class AllToolsInitial extends AllToolsState {}
class AllToolsLoading extends AllToolsState {}
class AllToolsLoaded extends AllToolsState {
  final List<Tool> tools;
  AllToolsLoaded({required this.tools});
}
class AllToolsError extends AllToolsState {
  final String errMessage;
  AllToolsError({required this.errMessage});
}
class AllToolsEmpty extends AllToolsState {}
class AllToolsNoInternet extends AllToolsState {
  final String errMessage;
  AllToolsNoInternet({required this.errMessage});
}