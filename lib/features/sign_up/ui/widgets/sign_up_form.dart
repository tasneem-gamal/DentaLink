import 'package:dentalink/core/widgets/custom_app_button.dart';
import 'package:dentalink/core/widgets/email_field.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:dentalink/features/sign_up/ui/widgets/academic_and_student_id_sign.dart';
import 'package:dentalink/features/sign_up/ui/widgets/name_field.dart';
import 'package:dentalink/features/sign_up/ui/widgets/password_and_confirm_password_field.dart';
import 'package:dentalink/features/sign_up/ui/widgets/phone_number_input_field.dart';
import 'package:dentalink/features/sign_up/ui/widgets/upload_title_and_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const NameField(),
          SizedBox(
            height: 14.h,
          ),
          const AcademicAndStudentIdSign(),
          SizedBox(
            height: 14.h,
          ),
          const EmailField(),
          SizedBox(
            height: 14.h,
          ),
          const PasswordAndConfirmPasswordField(),
          SizedBox(
            height: 14.h,
          ),
          const TitleOfTextField(
            title: 'Phone number',
          ),
          SizedBox(
            height: 14.h,
          ),
          const PhoneNumberContainer(),
          SizedBox(
            height: 14.h,
          ),
          const UploadTitleAndContainer(),
          SizedBox(
            height: 14.h,
          ),
          CustomAppButton(
            btnText: 'Sign Up',
            onPressed: signUpVaidate,
          ),
        ],
      ),
    );
  }

    signUpVaidate(){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
            } else{
              setState(() {
              autovalidateMode = AutovalidateMode.always;
            });
            }
          }

}





