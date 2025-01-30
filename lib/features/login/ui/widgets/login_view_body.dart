import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/extension.dart';
import 'package:dentalink/core/routing/routes.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/core/widgets/have_account_text.dart';
import 'package:dentalink/core/widgets/other_login_row_options.dart';
import 'package:dentalink/features/login/ui/widgets/login_form.dart';
import 'package:dentalink/features/login/ui/widgets/other_login_options_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
            const LoginForm(),
            SizedBox(height: 30.h,),
            const OtherLoginOptionsDivider(),
            SizedBox(height: 24.h,),
            const OtherLoginRowOptions(
              width: 169,
            ),
            SizedBox(height: 14.h,),
            HaveAccountText(
              title: "Don’t have an account? ", 
              navTitle: "Sign up.", 
              onTap: (){
                context.pushNamed(Routes.signUpView);
              }
            )
          ],
        ),
      ),
    );
  }
}





