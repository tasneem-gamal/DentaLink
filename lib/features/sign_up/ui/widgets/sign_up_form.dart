import 'package:dentalink/core/helpers/extension.dart';
import 'package:dentalink/core/routing/routes.dart';
import 'package:dentalink/core/widgets/custom_app_button.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:dentalink/core/widgets/email_field.dart';
import 'package:dentalink/core/widgets/have_account_text.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:dentalink/features/sign_up/ui/widgets/academic_and_student_id_sign.dart';
import 'package:dentalink/features/sign_up/ui/widgets/password_and_confirm_password_field.dart';
import 'package:dentalink/features/sign_up/ui/widgets/phone_number_input_field.dart';
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
  
  final TextEditingController nameController = TextEditingController();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();
  
  
  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const TitleOfTextField(
            title: 'Name',
          ),
          SizedBox(
            height: 14.h,
          ),
          CustomTextFormField(
              keyboardType: TextInputType.name,
              controller: nameController,
              validator: nameValidate, 
              hintText: 'Salem'
            ),
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
          CustomAppButton(
            btnText: 'Sign Up',
            onPressed: signUpVaidate,
          ),
          SizedBox(
            height: 10.h,
          ),
          HaveAccountText(
            title: 'Already have an account? ', 
            navTitle: 'Login', 
            onTap: (){
              context.pushNamed(Routes.loginView);
            }
          )
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

    nameValidate(value){
            if(value == null || value.isEmpty){
              return 'Name cannot be empty';
            }
          }
    


}



