part of 'tools_by_id_cubit.dart';

class ToolsByIdState {}

class ToolsByIdInitial extends ToolsByIdState {}

class ToolsByIdLoading extends ToolsByIdState {}

class ToolsByIdLoaded extends ToolsByIdState {
  final Tool tool;
  ToolsByIdLoaded({required this.tool});
}

class ToolsByIdError extends ToolsByIdState {
  final String error;
  ToolsByIdError({required this.error});
}
