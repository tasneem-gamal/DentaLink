import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/font_weight_helper.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class ToolTitlePrice extends StatelessWidget {
  const ToolTitlePrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Curette',
          style: CustomTextStyles.font20BlackMedium(context),
        ),
        Text(
          '250 LE',
          style: CustomTextStyles.font24BlackSemiBold(context).copyWith(
            color: ColorsManager.mainBlue,
            fontWeight: FontWeightHelper.regular,
          ),
        )
      ],
    );
  }
}