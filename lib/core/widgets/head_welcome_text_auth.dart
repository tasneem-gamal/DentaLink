import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeadWelcomeTextAuth extends StatelessWidget {
  const HeadWelcomeTextAuth({
    super.key, required this.title, required this.subTitle,
  });
  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: CustomTextStyles.font20BlackMedium,
        ),
        SizedBox(height: 6.h,),
        Text(
          subTitle,
          style: CustomTextStyles.font14LightGrayRegular,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 24.h,),
      ],
    );
  }
}