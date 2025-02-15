import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/widgets/head_welcome_text_auth.dart';
import 'package:dentalink/features/auth/forgot_password/ui/widgets/otp_boxes.dart';
import 'package:flutter/material.dart';

class ForgotPasswordOtpViewBody extends StatelessWidget {
  const ForgotPasswordOtpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/dentalink.png'),
            const HeadWelcomeTextAuth(
              title: 'Reset Password',
              subTitle: "Code has sent to Mahmoud@gt.com",
            ),
            verticalSpace(18),
            const OtpBoxes()
          ],
        )
      ),
    );
  }
}

