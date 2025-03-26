import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/features/cart/ui/widgets/checkout/order_details/title_text.dart';
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
        const TitleText(
          title: 'Order date', 
          titleText: '17/4/2025'
        ),
        horizontalSpace(100.w),
        const TitleText(
          title: 'Payment', 
          titleText: 'Cash on delivery'
        ),
      ],
    );
  }
}
