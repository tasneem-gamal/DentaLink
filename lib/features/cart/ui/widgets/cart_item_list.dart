import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/features/cart/ui/widgets/cart_item.dart';
import 'package:dentalink/features/cart/ui/widgets/remove_from_cart_bloc_listener.dart';
import 'package:dentalink/features/home/data/models/cart_item_model.dart';
import 'package:dentalink/features/home/data/models/remove_from_cart/remove_from_cart_request.dart';
import 'package:dentalink/features/home/logic/remove_from_cart/remove_from_cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItemList extends StatefulWidget {
  final List<CartItemModel> cartItemsList;
  const CartItemList({
    super.key,
    required this.cartItemsList,
  });

  @override
  State<CartItemList> createState() => _CartItemListState();
}

class _CartItemListState extends State<CartItemList> {
  void _removeItem(String id) {
    context
        .read<RemoveFromCartCubit>()
        .removeFromCart(RemoveFromCartRequest(toolId: id));
  }

  @override
  Widget build(BuildContext context) {
    return RemoveFromCartBlocListener(
      child: ListView.separated(
        itemBuilder: (context, index) => CartItem(
          onDelete: (id) => _removeItem(id),
          cartItem: widget.cartItemsList[index],
        ),
        separatorBuilder: (context, index) => verticalSpace(12),
        itemCount: widget.cartItemsList.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
      ),
    );
  }
}
