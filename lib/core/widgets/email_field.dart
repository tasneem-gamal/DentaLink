import 'package:dentalink/core/helpers/app_regex.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailField extends StatefulWidget {
  const EmailField({super.key});

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            const TitleOfTextField(
              title: 'Email Address',
            ),
            SizedBox(
              height: 14.h,
            ),
            CustomTextFormField(
              keyboardType: TextInputType.emailAddress,
              hintText: 'Salem12@gmail.com',
              validator: emailValidate,
              controller: emailController,
            ),
          ],
        );
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