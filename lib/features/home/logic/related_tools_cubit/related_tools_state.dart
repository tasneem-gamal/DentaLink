part of 'related_tools_cubit.dart';

class RelatedToolsState {}

class RelatedToolsInitial extends RelatedToolsState {}

class RelatedToolsLoading extends RelatedToolsState {}

class RelatedToolsLoaded extends RelatedToolsState {
  final List<Tool> tools;

  RelatedToolsLoaded(this.tools);
}

class RelatedToolsError extends RelatedToolsState {
  final String errMessage;

  RelatedToolsError(this.errMessage);
}
