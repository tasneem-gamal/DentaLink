import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/features/profile/ui/widgets/all_orders/order_item.dart';
import 'package:flutter/material.dart';

class AllOrdersViewBody extends StatelessWidget {
  const AllOrdersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(20),
          Text(
            'All orders (3)',
            style: CustomTextStyles.font20BlackMedium(context),
          ),
          verticalSpace(16),
          const OrderItemListView()
        ],
      ),
    );
  }
}

class OrderItemListView extends StatelessWidget {
  const OrderItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => const OrderItem(), 
        separatorBuilder: (context, index) => verticalSpace(12), 
        itemCount: 3
      ),
    );
  }
}

