import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/features/cart/ui/widgets/cart_item_bloc_builder.dart';
import 'package:dentalink/features/cart/ui/widgets/recommendation_tools_list.dart';
import 'package:dentalink/features/home/logic/cart_items_cubit/cart_items_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(20),
          BlocBuilder<CartItemsCubit, CartItemsState>(
            builder: (context, state) {
              int count = 0;
              if (state is CartItemsSuccess) {
                count = state.cartItemsList.length;
              }
              return Text(
                'Cart ($count)',
                style: CustomTextStyles.font20BlackMedium(context),
              );
            },
          ),
          verticalSpace(16),
          const CartItemBlocBuilder(),
          verticalSpace(24),
          Text(
            'You might like',
            style: CustomTextStyles.font20BlackMedium(context),
          ),
          verticalSpace(16),
          const RecommendationToolsList()
        ],
      )),
    );
  }
}
