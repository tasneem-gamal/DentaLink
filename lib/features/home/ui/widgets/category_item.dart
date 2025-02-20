import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key, required this.image, required this.categoryTitle,
  });
  final Image image;
  final String categoryTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.27,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: ColorsManager.lightBlue
          ),
          child: Center(
            child: image,
          ),
        ),
        verticalSpace(4),
        Text(
          categoryTitle,
          style: CustomTextStyles.font12BlackMedium,
        )
      ],
    );
  }
}