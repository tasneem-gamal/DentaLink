import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dentalink/features/home/data/models/add_tools/add_tool_request.dart';
import 'package:dentalink/features/home/data/models/add_tools/add_tool_response.dart';
import 'package:dentalink/features/home/data/repo/add_tool_repo/add_tool_repo.dart';
import 'package:flutter/material.dart';

part 'add_tool_state.dart';

class AddToolCubit extends Cubit<AddToolState> {
  AddToolCubit(this.addToolRepo) : super(AddToolInitial());
  final AddToolRepo addToolRepo;
  final GlobalKey<FormState> addToolFormKey = GlobalKey();
  late List<File> imageFile;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  String selectedCategory = 'Diagnostic Tools';

  void updateCategory(String category) {
    selectedCategory = category;
  }

  Future<void> emitAddToolState() async {
    if (addToolFormKey.currentState?.validate() != true) {
      return;
    }
    emit(AddToolLoading());

    try {
      final response = await addToolRepo.addNewTool(
        AddToolRequest(
          name: nameController.text,
          description: descriptionController.text,
          images: imageFile,
        ),
      );

      response.fold(
        (failure) => emit(AddToolFailure(failure.errMessage)),
        (success) => emit(AddToolSuccess(success, "success")),
      );
    } catch (e) {
      emit(AddToolFailure(e.toString()));
    }
  }
}
