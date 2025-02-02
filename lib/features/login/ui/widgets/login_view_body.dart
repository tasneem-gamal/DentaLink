import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/extension.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/widgets/have_account_text.dart';
import 'package:dentalink/core/widgets/head_welcome_text_auth.dart';
import 'package:dentalink/core/widgets/other_login_row_options.dart';
import 'package:dentalink/features/login/ui/widgets/login_form.dart';
import 'package:dentalink/features/login/ui/widgets/other_login_options_divider.dart';
import 'package:flutter/material.dart';

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
            const HeadWelcomeTextAuth(
              title: 'Welcome Back!',
              subTitle: 'Enter your details to get login into your\n account.',
            ),
            verticalSpace(48),
            const LoginForm(),
            verticalSpace(30),
            const OtherLoginOptionsDivider(),
            verticalSpace(24),
            const OtherLoginRowOptions(
              width: 169,
            ),
            verticalSpace(14),
            HaveAccountText(
              title: "Don’t have an account? ", 
              navTitle: "Sign up.", 
              onTap: (){
                context.pop();
              }
            )
          ],
        ),
      ),
    );
  }
}







