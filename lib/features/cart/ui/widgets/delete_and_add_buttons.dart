import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class DeleteAndAddButtons extends StatelessWidget {
  const DeleteAndAddButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '1200',
          style: CustomTextStyles.font16BlackMedium(context).copyWith(
            color: ColorsManager.mainBlue
          ),
        ),
        Row(
          children: [
            Container(
              height: 24,
              width: 24,
              decoration: const BoxDecoration(
                color: ColorsManager.shimmerColorLoading
              ),
              child: const Icon(Icons.delete, color: Colors.red,),
            ),
            horizontalSpace(6),
            Text(
              '1',
              style: CustomTextStyles.font16BlackMedium(context),
            ),
            horizontalSpace(6),
            Container(
              height: 24,
              width: 24,
              decoration: const BoxDecoration(
                color: ColorsManager.shimmerColorLoading
              ),
              child: const Icon(Icons.add),
            ),
          ],
        )
      ],
    );
  }
}