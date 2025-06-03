import 'package:dentalink/core/widgets/custom_loading_indicator.dart';
import 'package:dentalink/features/cart/ui/widgets/cart_item_list.dart';
import 'package:dentalink/features/home/logic/cart_items_cubit/cart_items_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItemBlocBuilder extends StatelessWidget {
  const CartItemBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemsCubit, CartItemsState>(
      buildWhen: (previous, current) =>
          current is CartItemsLoading ||
          current is CartItemsSuccess ||
          current is CartItemsFailure,
      builder: (context, state) {
        if (state is CartItemsLoading) {
          return const CustomLoadingIndicator();
        } else if (state is CartItemsSuccess) {
          if (state.cartItemsList.isEmpty) {
            return const Center(
              child: Text('Cart is Empty'),
            );
          }
          return CartItemList(cartItemsList: state.cartItemsList);
        } else if (state is CartItemsFailure) {
          return Center(
            child: Text(state.errMessage),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
