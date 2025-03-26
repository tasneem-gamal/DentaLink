import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DatePaymentDetails extends StatelessWidget {
  const DatePaymentDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              'Order date',
              style: CustomTextStyles.font12LightGrayRegular(context),
            ),
            verticalSpace(6),
            Text(
              '17/4/2025',
              style: CustomTextStyles.font12BlackRegular(context),
            ),
          ],
        ),
        horizontalSpace(100.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment',
              style: CustomTextStyles.font12LightGrayRegular(context),
            ),
            verticalSpace(6),
            Text(
              'Cash on delivery',
              style: CustomTextStyles.font12BlackRegular(context),
            ),
          ],
        ),
      ],
    );
  }
}
