import 'package:dentalink/core/helpers/app_regex.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  final TextEditingController passwordController = TextEditingController();
  bool isObsecureText = true;

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleOfTextField(
          title: 'Password',
        ),
        verticalSpace(14),
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
}