import 'package:dentalink/core/widgets/general_custom_app_bar.dart';
import 'package:dentalink/features/cart/ui/widgets/checkout/checkout_pay/checkout_pay_view_body.dart';
import 'package:flutter/material.dart';

class CheckoutPayView extends StatelessWidget {
  const CheckoutPayView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: GeneralCustomAppBar(title: 'Checkout'),
      body: CheckoutPayViewBody(),
    );
  }
}