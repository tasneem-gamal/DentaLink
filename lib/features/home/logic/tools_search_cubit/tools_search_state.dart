part of 'package:dentalink/features/home/logic/tools_search_cubit/tools_search_cubit.dart';

class ToolsSearchState {}
class ToolsSearchInitial extends ToolsSearchState {}
class ToolsSearchLoading extends ToolsSearchState {}
class ToolsSearchLoaded extends ToolsSearchState {
  final List<Tool> tools;
  ToolsSearchLoaded(this.tools);
}
class ToolsSearchError extends ToolsSearchState {
  final String errMessage;
  ToolsSearchError(this.errMessage);
}
class ToolsSearchEmpty extends ToolsSearchState {}