import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyViewBody extends StatelessWidget {
  const PrivacyPolicyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(20),
            Text(
              '1. Introduction',
              style: CustomTextStyles.font14BlackRegular(context),
            ),
            verticalSpace(8),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Welcome to ',
                    style: CustomTextStyles.font14LightGrayRegular(context).copyWith(
                      color: ColorsManager.lightGray
                    )
                  ),
                  TextSpan(
                    text: 'DentaLink',
                    style: CustomTextStyles.font14MainBlueRegular(context)
                  ),
                  TextSpan(
                    text: '! Your privacy is important to us. '
                        'This Privacy Policy outlines how we collect, use, disclose, and protect your information when you use our mobile application designed to assist dental students with patient discovery, equipment marketplaces, and educational material exchange.',
                    style: CustomTextStyles.font14LightGrayRegular(context).copyWith(
                      color: ColorsManager.lightGray
                    )
                  ),
                ],
              ),
              textAlign: TextAlign.start,
              softWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}