import 'package:dentalink/core/helpers/app_regex.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/core/widgets/custom_app_button.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:dentalink/features/login/ui/widgets/remember_and_forgot_pass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();
  bool isObsecureText = true;
  
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
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
          title: 'Email Address',
        ),
        SizedBox(
          height: 14.h,
        ),
        CustomTextFormField(
          hintText: 'Salem12@gmail.com',
          validator: emailValidate,
          controller: emailController,
        ),
        SizedBox(
          height: 16.h,
        ),
        const TitleOfTextField(
          title: 'Password',
        ),
        SizedBox(
          height: 14.h,
        ),
        CustomTextFormField(
          hintText: '1234566',
          validator: passwordValidate,
          controller: passwordController,
          suffixIcon: const Icon(Icons.remove_red_eye),
        ),
        SizedBox(
          height: 16.h,
        ),
        const RememberAndForgotPass(),
        SizedBox(
          height: 30.h,
        ),
        CustomAppButton(
            btnText: 'Login', textStyle: CustomTextStyles.font20WhiteSemiBold)
      ],
    ));
  }

  passwordValidate(value) {
          if (value == null || value.isEmpty) {
            return 'Password cannot be empty';
          } 
          if(!AppRegex.hasLowerCase(value) ||
            !AppRegex.hasMinLength(value) ||
            !AppRegex.isPasswordValid(value) ||
            !AppRegex.hasSpecialCharacter(value)){
              return "Enter a valid password: at least 6 characters,\n including one uppercase letter and one special char.";
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
