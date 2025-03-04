import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/features/home/ui/widgets/tools/tool_details/review_container.dart';
import 'package:flutter/material.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Reviews (24)',
              style: CustomTextStyles.font16BlackMedium(context),
            ),
            TextButton(
              onPressed: (){}, 
              child: Row(
                children: [
                  Text(
                    'View all',
                    style: CustomTextStyles.font12LightGrayRegular(context),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios, 
                    size: 18, 
                    color: ColorsManager.lightGray,
                  )
                ],
              )
            )
          ],
        ),
        verticalSpace(8),
        const ReviewContainer()
      ],
    );
  }
}


