import 'package:dentalink/core/helpers/app_regex.dart';
import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:dentalink/core/widgets/head_welcome_text_auth.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:flutter/material.dart';

class ForgotPasswordViewBody extends StatefulWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  State<ForgotPasswordViewBody> createState() => _ForgotPasswordViewBodyState();
}

class _ForgotPasswordViewBodyState extends State<ForgotPasswordViewBody> {
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/dentalink.png'),
            const HeadWelcomeTextAuth(
              title: 'Forgot Password',
              subTitle: "Forgot your password? No worries, let’s\n get you back on track!",
            ),
            verticalSpace(18),
            const TitleOfTextField(title: 'Email Address'),
            verticalSpace(14),
            CustomTextFormField(
              keyboardType: TextInputType.emailAddress,
              validator: emailValidate, 
              hintText: 'Salem12@gmail.com',
              controller: emailController,
            ),
          ],
        )
      ),
    );
  }
  emailValidate(value) {
    if (value == null || value.isEmpty) {
      return 'Email cannot be empty';
    }
    if (!AppRegex.isEmailValid(value)) {
      return 'Enter a valid email address';
    }
  }
}