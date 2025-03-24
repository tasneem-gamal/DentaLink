import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorsManager.moreLightGray)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            Image.asset('assets/images/item.png'),
            horizontalSpace(6),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dental Drill',
                    style: CustomTextStyles.font12BlackMedium(context),
                  ),
                  verticalSpace(8),
                  Text(
                    'Used to remove decay and shape teeth for fillings or crowns',
                    style: CustomTextStyles.font12LightGrayRegular(context),
                  ),
                  verticalSpace(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1200',
                        style: CustomTextStyles.font16BlackMedium(context).copyWith(
                          color: ColorsManager.mainBlue
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            decoration: const BoxDecoration(
                              color: ColorsManager.moreLightGray
                            ),
                            child: const Icon(Icons.delete_forever_outlined),
                          ),
                          horizontalSpace(6),
                          Text(
                            '1',
                            style: CustomTextStyles.font16BlackMedium(context),
                          ),
                          horizontalSpace(6),
                          Container(
                            height: 24,
                            width: 24,
                            decoration: const BoxDecoration(
                              color: ColorsManager.moreLightGray
                            ),
                            child: const Icon(Icons.add),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}