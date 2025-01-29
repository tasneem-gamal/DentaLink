import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/dentalink.png'),
            Text(
              'Welcome Back!',
              style: CustomTextStyles.font20BlackMedium,
            ),
            SizedBox(height: 6.h,),
            Text(
              'Enter your details to get login into your\n account.',
              style: CustomTextStyles.font14LightGrayRegular,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 48.h,),
            const TitleOfTextField(
              title: 'Email Address',
            ),
            SizedBox(height: 14.h,),
            CustomTextFormField(
              validator: (value){},
              controller: emailController,
            )
          ],
        ),
      ),
    );
  }
}



