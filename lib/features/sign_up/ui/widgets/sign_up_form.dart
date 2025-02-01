import 'package:dentalink/core/helpers/app_regex.dart';
import 'package:dentalink/core/helpers/extension.dart';
import 'package:dentalink/core/routing/routes.dart';
import 'package:dentalink/core/widgets/custom_app_button.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:dentalink/core/widgets/have_account_text.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:dentalink/features/sign_up/ui/widgets/academic_and_student_id_sign.dart';
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
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();
  bool isObsecureText = true;
  bool isPasswordConfirmationObscureText = true;
  
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    passwordConfirmController.dispose();
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
          AcademicAndStudentIdSign(),
          SizedBox(
            height: 14.h,
          ),
          const TitleOfTextField(
            title: 'Email Address',
          ),
          SizedBox(
            height: 14.h,
          ),
          CustomTextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              validator: emailValidate, 
              hintText: 'Salem12@gmail.com'
            ),
          SizedBox(
            height: 14.h,
          ),
          const TitleOfTextField(
            title: 'Password',
          ),
          SizedBox(
            height: 14.h,
          ),
          CustomTextFormField(
            keyboardType: TextInputType.visiblePassword,
            hintText: '************',
            validator: passwordValidate,
            controller: passwordController,
            isObsecureText: isObsecureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObsecureText = !isObsecureText;
                });
              },
              child: Icon(isObsecureText ? Icons.visibility_off : Icons.visibility,)
            ),
          ),
          SizedBox(
            height: 14.h,
          ),
          const TitleOfTextField(
            title: 'Confirm Password',
          ),
          SizedBox(
            height: 14.h,
          ),
          CustomTextFormField(
            keyboardType: TextInputType.visiblePassword,
            hintText: '************',
            validator: confirmPasswordValidate,
            controller: passwordConfirmController,
            isObsecureText: isPasswordConfirmationObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordConfirmationObscureText = !isPasswordConfirmationObscureText;
                });
              },
              child: Icon(isPasswordConfirmationObscureText ? Icons.visibility_off : Icons.visibility,)
            ),
          ),
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
    
      passwordValidate(value) {
          if (value == null || value.isEmpty) {
            return 'Password cannot be empty';
          } 
          if(!AppRegex.hasLowerCase(value) &&
            !AppRegex.hasMinLength(value) &&
            !AppRegex.isPasswordValid(value) &&
            !AppRegex.hasSpecialCharacter(value)){
              return "Enter a valid password: at least 8 characters,\nincluding one lowercase letter and one special char.";
          }
        }

          confirmPasswordValidate(value){
            if(value == null || value.isEmpty){
              return 'Password cannot be empty';
            }
            if(value == passwordController.text){
              return 'Passwords match';
            } else{
              return 'Passwords do not match';
            }
          }

  emailValidate(value) {
          if(value == null || value.isEmpty){
            return 'Email cannot be empty';
          }
          if(!AppRegex.isEmailValid(value)){
            return 'Enter a valid email address';
          }
        }
}



