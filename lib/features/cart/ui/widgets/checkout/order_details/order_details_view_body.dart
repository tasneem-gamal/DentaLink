import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/features/cart/ui/widgets/checkout/order_details/success_image.dart';
import 'package:flutter/material.dart';

class OrderDetailsViewBody extends StatelessWidget {
  const OrderDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(20),
            const SuccessImage(),
            verticalSpace(30),
            Text(
              'Order ID',
              style: CustomTextStyles.font16BlackMedium(context),
            ),
          ],
        )
      ),
    );
  }
}

