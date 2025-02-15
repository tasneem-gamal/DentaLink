import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class ResendCodeRow extends StatelessWidget {
  const ResendCodeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Didn’t get your code?',
          style: CustomTextStyles.font14BlackRegular,
        ),
        TextButton(
          onPressed: (){}, 
          child: Text(
            'Resend',
            style: CustomTextStyles.font14MainBlueRegular,
          )
        )
      ],
    );
  }
}