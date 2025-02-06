import 'package:dentalink/core/helpers/extension.dart';
import 'package:dentalink/core/routing/routes.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class RememberAndForgotPass extends StatefulWidget {
  const RememberAndForgotPass({super.key});

  @override
  State<RememberAndForgotPass> createState() => _RememberAndForgotPassState();
}

class _RememberAndForgotPassState extends State<RememberAndForgotPass> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              activeColor: ColorsManager.mainBlue,
              value: isChecked, 
              onChanged: (value) {
                setState(() {
                  isChecked = value ?? false ;
                });
              }
            ),
            Text(
              'Remember me',
              style: CustomTextStyles.font12BlackRegular,
            )
          ],
        ),
        TextButton(
            onPressed: () {
              context.pushNamed(Routes.forgotPasswordView);
            },
            child: Text(
              'Forgot Password?',
              style: CustomTextStyles.font12MainBlueSemiBold,
            ))
      ],
    );
  }
}
