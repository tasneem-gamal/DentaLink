import 'package:dentalink/core/helpers/extension.dart';
import 'package:dentalink/core/routing/routes.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/core/widgets/custom_app_button.dart';
import 'package:dentalink/core/widgets/have_account_text.dart';
import 'package:dentalink/core/widgets/other_login_row_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButtonsContainer extends StatelessWidget {
  const GetStartedButtonsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * 0.38,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(4, 4),
              blurRadius: 6,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 79, left: 24, right: 24),
          child: Column(
            children: [
              CustomAppButton(
                btnText: 'Get Started',
                textStyle: CustomTextStyles.font20WhiteSemiBold,
                buttonHeight: 57,
              ),
              SizedBox(
                height: 16.h,
              ),
              const OtherLoginRowOptions(),
              SizedBox(
                height: 18.h,
              ),
              HaveAccountText(
                title: 'Already have an account? ',
                navTitle: 'Login',
                onTap: () {
                  context.pushNamed(Routes.loginView);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
