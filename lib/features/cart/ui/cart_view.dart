import 'package:dentalink/core/di/dependency_injection.dart';
import 'package:dentalink/core/helpers/extension.dart';
import 'package:dentalink/core/routing/routes.dart';
import 'package:dentalink/core/widgets/custom_app_button.dart';
import 'package:dentalink/features/cart/ui/widgets/cart_view_body.dart';
import 'package:dentalink/features/home/logic/cart_items_cubit/cart_items_cubit.dart';
import 'package:dentalink/features/home/logic/remove_from_cart/remove_from_cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<CartItemsCubit>()..getCartItems(),
        ),
        BlocProvider(
          create: (context) => getIt<RemoveFromCartCubit>(),
        ),
      ],
      child: Scaffold(
        body: const CartViewBody(),
        floatingActionButton: CustomAppButton(
          buttonWidth: MediaQuery.of(context).size.width * 0.4,
          btnText: 'Checkout',
          onPressed: () {
            context.pushNamed(Routes.checkoutConfirmView);
          },
        ),
      ),
    );
  }
}
