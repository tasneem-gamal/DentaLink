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
          validator: (value) {},
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
          validator: (value) {},
          controller: emailController,
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
}
