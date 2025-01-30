import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class OtherLoginOptionsDivider extends StatelessWidget {
  const OtherLoginOptionsDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            thickness: 1,
            color: ColorsManager.lightGray,
            height: 10,
          ),
        ),
        const SizedBox(width: 8,),
        Text(
          'Or Login with',
          style: CustomTextStyles.font12LightGrayRegular,
        ),
        const SizedBox(width: 8,),
        const Expanded(
          child: Divider(
            thickness: 1,
            color: ColorsManager.lightGray,
            height: 10,
          ),
        ),
      ],
    );
  }
}