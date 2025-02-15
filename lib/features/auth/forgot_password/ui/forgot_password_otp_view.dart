import 'package:dentalink/features/auth/forgot_password/ui/widgets/forgot_password_otp_view_body.dart';
import 'package:flutter/material.dart';

class ForgotPasswordOtpView extends StatelessWidget {
  const ForgotPasswordOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ForgotPasswordOtpViewBody()),
    );
  }
}