import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/features/cart/ui/widgets/cart_item_list.dart';
import 'package:dentalink/features/cart/ui/widgets/checkout/checkout_confirm/order_summary_container.dart';
import 'package:flutter/material.dart';

class CheckoutConfirmBody extends StatelessWidget {
  const CheckoutConfirmBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(12),
            const CartItemList(),
            verticalSpace(24),
            Text(
              'Order summary',
              style: CustomTextStyles.font20BlackMedium(context),
            ),
            verticalSpace(16),
            const OrderSummaryContainer()
          ],
        )
      ),
    );
  }
}

