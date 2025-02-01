import 'package:dentalink/core/helpers/app_regex.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordAndConfirmPasswordField extends StatefulWidget {
  const PasswordAndConfirmPasswordField({super.key});

  @override
  State<PasswordAndConfirmPasswordField> createState() => _PasswordAndConfirmPasswordFieldState();
}

class _PasswordAndConfirmPasswordFieldState extends State<PasswordAndConfirmPasswordField> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController = TextEditingController();
  bool isObsecureText = true;
  bool isPasswordConfirmationObscureText = true;

  @override
  void dispose() {
    passwordController.dispose();
    passwordConfirmController.dispose();
    super.dispose();
  } 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          )
      ],
    );
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
}