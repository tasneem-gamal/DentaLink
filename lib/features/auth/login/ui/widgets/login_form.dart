import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/widgets/custom_app_button.dart';
import 'package:dentalink/core/widgets/email_field.dart';
import 'package:dentalink/features/auth/login/ui/widgets/password_field.dart';
import 'package:dentalink/features/auth/login/ui/widgets/remember_and_forgot_pass.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();
  
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
        child: Column(
      children: [
        const EmailField(),
        verticalSpace(16),
        const PasswordField(),
        verticalSpace(16),
        const RememberAndForgotPass(),
        verticalSpace(30),
        CustomAppButton(
            btnText: 'Login', 
            onPressed: loginValidate,
          )
      ],
    ));
  }

  void loginValidate(){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
            } else{
              setState(() {
                autovalidateMode = AutovalidateMode.always;
              });
            }
          }

}
