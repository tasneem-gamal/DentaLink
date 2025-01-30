import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class RememberAndForgotPass extends StatelessWidget {
  const RememberAndForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: false, onChanged: (value) {}),
            Text(
              'Remember me',
              style: CustomTextStyles.font12BlackRegular,
            )
          ],
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'Forgot Password?',
              style: CustomTextStyles.font12MainBlueSemiBold,
            ))
      ],
    );
  }
}
