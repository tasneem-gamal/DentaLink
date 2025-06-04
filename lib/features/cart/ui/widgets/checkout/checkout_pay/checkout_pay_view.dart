import 'package:dentalink/core/di/dependency_injection.dart';
import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/extension.dart';
import 'package:dentalink/core/routing/routes.dart';
import 'package:dentalink/core/widgets/custom_app_button.dart';
import 'package:dentalink/core/widgets/general_custom_app_bar.dart';
import 'package:dentalink/features/cart/ui/widgets/checkout/checkout_pay/checkout_pay_view_body.dart';
import 'package:dentalink/features/home/logic/cart_items_cubit/cart_items_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckoutPayView extends StatelessWidget {
  const CheckoutPayView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CartItemsCubit>(),
      child: Scaffold(
        appBar: const GeneralCustomAppBar(title: 'Checkout'),
        body: const CheckoutPayViewBody(),
        bottomNavigationBar: Padding(
          padding: Constants.appPadding,
          child: CustomAppButton(
            btnText: 'Pay',
            onPressed: () {
              context.pushNamed(Routes.orderDetailsView);
            },
          ),
        ),
      ),
    );
  }
}
