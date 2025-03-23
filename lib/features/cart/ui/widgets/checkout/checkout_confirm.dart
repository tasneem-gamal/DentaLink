import 'package:dentalink/core/widgets/general_custom_app_bar.dart';
import 'package:dentalink/features/cart/ui/widgets/checkout/checkout_confirm_body.dart';
import 'package:flutter/material.dart';

class CheckoutConfirm extends StatelessWidget {
  const CheckoutConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: GeneralCustomAppBar(title: 'Checkout'),
      body: CheckoutConfirmBody(),
    );
  }
}