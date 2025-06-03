import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/features/cart/ui/widgets/cart_item.dart';
import 'package:dentalink/features/home/data/models/cart_item_model.dart';
import 'package:flutter/material.dart';

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
  void _removeItem(int index) {
    setState(() {
      widget.cartItemsList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => CartItem(
        onDelete: () => _removeItem(index),
        cartItem: widget.cartItemsList[index],
      ),
      separatorBuilder: (context, index) => verticalSpace(12),
      itemCount: widget.cartItemsList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
