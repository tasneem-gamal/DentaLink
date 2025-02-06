import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/extension.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/routing/routes.dart';
import 'package:dentalink/core/widgets/have_account_text.dart';
import 'package:dentalink/core/widgets/head_welcome_text_auth.dart';
import 'package:dentalink/features/auth/sign_up/ui/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: SingleChildScrollView(
          child: Column(
        children: [
          Image.asset('assets/images/dentalink.png'),
          const HeadWelcomeTextAuth(
              title: 'Create Account',
              subTitle:
                  'Join our community of dental students'),
          const SignUpForm(),
          verticalSpace(10),
          HaveAccountText(
            title: 'Already have an account? ', 
            navTitle: 'Login', 
            onTap: (){
              context.pushNamed(Routes.loginView);
            }
          )
        ],
      )),
    );
  }
}

