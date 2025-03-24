import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/core/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorsManager.moreLightGray)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            Row(
              children: [
                Radio(
                  value: 'value', 
                  groupValue: 'groupValue', 
                  onChanged: (onChanged){}
                ),
                horizontalSpace(6),
                Text(
                  'Credit card',
                  style: CustomTextStyles.font14BlackRegular(context),
                )
              ],
            ),
            const CustomDivider(),
            Row(
              children: [
                Radio(
                  value: 'value', 
                  groupValue: 'groupValue', 
                  onChanged: (onChanged){}
                ),
                horizontalSpace(6),
                Text(
                  'Cash on delivery',
                  style: CustomTextStyles.font14BlackRegular(context),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}