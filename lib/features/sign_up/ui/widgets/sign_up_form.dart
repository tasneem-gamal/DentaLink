import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/widgets/custom_app_button.dart';
import 'package:dentalink/core/widgets/email_field.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:dentalink/features/sign_up/ui/widgets/academic_and_student_id_sign.dart';
import 'package:dentalink/features/sign_up/ui/widgets/name_field.dart';
import 'package:dentalink/features/sign_up/ui/widgets/password_and_confirm_password_field.dart';
import 'package:dentalink/features/sign_up/ui/widgets/phone_number_input_field.dart';
import 'package:dentalink/features/sign_up/ui/widgets/upload_title_and_container.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  
  
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();
  bool isFileUploaded = false;


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const NameField(),
          verticalSpace(14),
          const AcademicAndStudentIdSign(),
          verticalSpace(14),
          const EmailField(),
          verticalSpace(14),
          const PasswordAndConfirmPasswordField(),
          verticalSpace(14),
          const TitleOfTextField(
            title: 'Phone number',
          ),
          verticalSpace(14),
          const PhoneNumberContainer(),
          verticalSpace(14),
          UploadTitleAndContainer(
            onFileUploaded: setFileUploaded,
          ),
          verticalSpace(14),
          CustomAppButton(
            btnText: 'Sign Up',
            onPressed: signUpValidate,
          ),
        ],
      ),
    );
  }

signUpValidate() {
  if (formKey.currentState!.validate()) {
    formKey.currentState!.save();
    
    if (!isFileUploaded) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            'Please upload a file before proceeding',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    } else {
      
    }
  } else {
    setState(() {
      autovalidateMode = AutovalidateMode.always;
    });
  }
}


  void setFileUploaded(bool value) {
    setState(() {
      isFileUploaded = value;
    });
  }

}





