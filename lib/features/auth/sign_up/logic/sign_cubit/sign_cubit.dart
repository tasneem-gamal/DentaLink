import 'package:bloc/bloc.dart';
import 'package:dentalink/features/auth/sign_up/data/models/sign_request_body.dart';
import 'package:dentalink/features/auth/sign_up/data/models/sign_response_body.dart';
import 'package:dentalink/features/auth/sign_up/data/repo/sign_repo.dart';
import 'package:flutter/material.dart';

part 'sign_state.dart';

class SignupCubit extends Cubit<SignState> {
  SignupCubit(this.signupRepo) : super(SignInitial());

  final SignRepo signupRepo;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController selectedYear = TextEditingController();
  final TextEditingController studentIdController = TextEditingController();
  final TextEditingController idPictureController = TextEditingController();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Future<void> close() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();
    selectedYear.dispose();
    studentIdController.dispose();
    idPictureController.dispose();
    return super.close();
  }

  Future<void> emitSignState() async {
    emit(SignLoading());

    try {
      final int universityId = int.parse(studentIdController.text);
      final int phone = int.parse(phoneController.text); 

      final response = await signupRepo.userSign(
        SignRequestBody(
          name: nameController.text,
          email: emailController.text,
          password: passwordController.text,
          phone: phone.toString(), 
          academicYear: selectedYear.text,
          universityID: universityId,
          idPicture: idPictureController.text,
          role: 'Student',
        ),
      );

      response.fold(
        (failure) {
          emit(SignFailure(failure.errMessage));
        },
        (success) {
          emit(SignSuccess(success));
        },
      );
    } catch (e) {
      emit(SignFailure("Invalid input data"));
    }
  }
}

