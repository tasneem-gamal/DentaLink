import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dentalink/features/home/data/models/add_patient/add_patient_request_body.dart';
import 'package:dentalink/features/home/data/models/add_patient/add_patient_response_body.dart';
import 'package:dentalink/features/home/data/repo/add_patient_repo/add_patient_repo.dart';
import 'package:flutter/material.dart';

part 'add_patient_state.dart';

class AddPatientCubit extends Cubit<AddPatientState> {
  AddPatientCubit(this.addPatientRepo) : super(AddPatientInitial());

  final AddPatientRepo addPatientRepo;
  final GlobalKey<FormState> formKey = GlobalKey();
  File? imageFile;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  String selectedGender = 'Male';
  String selectedCategory = 'Endodontics';

    @override
  Future<void> close() {
    nameController.dispose();
    phoneController.dispose();
    titleController.dispose();
    ageController.dispose();
    locationController.dispose();
    descriptionController.dispose();
    return super.close();
  }

  void updateGender(String gender) {
    selectedGender = gender;
  }

  void updateCategory(String category) {
    selectedCategory = category;
  }

  Future<void> emitAddPetientStates() async {
    if (formKey.currentState?.validate() != true) {
      return;
    }
    emit(AddPatientLoading());

    try{
      final response = await addPatientRepo.addNewPatient(
        AddPatientRequestBody(
          name: nameController.text, 
          age: int.parse(ageController.text), 
          gender: selectedGender, 
          phone: phoneController.text, 
          title: titleController.text, 
          category: selectedCategory, 
          location: locationController.text, 
          description: descriptionController.text, 
          images: imageFile != null ? [imageFile] : [],
        )
      );

      response.fold(
        (failure) => emit(AddPatientFailure(failure.errMessage)),
        (success) => emit(AddPatientSuccess(success)),
      );
    } catch (e) {
      emit(AddPatientFailure("Invalid input data"));
    }
  }
}
