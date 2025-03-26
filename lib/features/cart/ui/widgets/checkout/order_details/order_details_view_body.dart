import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/core/widgets/custom_divider.dart';
import 'package:dentalink/features/cart/ui/widgets/checkout/order_details/date_payment_details.dart';
import 'package:dentalink/features/cart/ui/widgets/checkout/order_details/order_id_section.dart';
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
            const OrderIdSection(),
            verticalSpace(10),
            const CustomDivider(),
            verticalSpace(16),
            const DatePaymentDetails(),
            verticalSpace(24),
            Text(
              'Address',
              style: CustomTextStyles.font12LightGrayRegular(context),
            ),
            verticalSpace(6),
            Text(
              '123 Elm Street Springfield, IL 62704 USA',
              style: CustomTextStyles.font12BlackRegular(context),
            ),
            verticalSpace(24),
            Text(
              'Phone number',
              style: CustomTextStyles.font12LightGrayRegular(context),
            ),
            verticalSpace(6),
            Text(
              '+96231520',
              style: CustomTextStyles.font12BlackRegular(context),
            ),
          ],
        )
      ),
    );
  }
}




