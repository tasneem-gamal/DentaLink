import 'package:dentalink/core/widgets/custom_app_button.dart';
import 'package:dentalink/core/widgets/email_field.dart';
import 'package:dentalink/features/login/ui/widgets/password_field.dart';
import 'package:dentalink/features/login/ui/widgets/remember_and_forgot_pass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        SizedBox(
          height: 16.h,
        ),
        const PasswordField(),
        SizedBox(
          height: 16.h,
        ),
        const RememberAndForgotPass(),
        SizedBox(
          height: 30.h,
        ),
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
