import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AboutUsViewBody extends StatelessWidget {
  const AboutUsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(20),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Welcome to our innovative ',
                    style: CustomTextStyles.font14LightGrayRegular(context).copyWith(
                      color: ColorsManager.lightGray
                    )
                  ),
                  TextSpan(
                    text: 'DentaLink',
                    style: CustomTextStyles.font14MainBlueRegular(context)
                  ),
                  TextSpan(
                    text: ', designed exclusively for dental students! '
                        'We understand the challenges you face in finding patients, sourcing tools, and exchanging study materials. '
                        'That’s why we’ve created a one-stop platform to make your journey as a dental student smoother, more efficient, and more collaborative.',
                    style: CustomTextStyles.font14LightGrayRegular(context).copyWith(
                      color: ColorsManager.lightGray
                    )
                  ),
                ],
              ),
              textAlign: TextAlign.start,
              softWrap: true,
            ),
            verticalSpace(20),
            Text(
              'Our app is built with you in mind. Whether you’re searching for patients to practice your skills, '
              'looking for specific dental tools, or wanting to exchange study resources with your peers, we’ve got you covered. '
              'But that’s not all—we’ve also integrated cutting-edge AI analysis to assist you in diagnosing dental conditions, giving you a powerful tool to enhance your learning and clinical skills.',
              style: CustomTextStyles.font14LightGrayRegular(context).copyWith(
                color: ColorsManager.lightGray
              ),
              textAlign: TextAlign.start,
              softWrap: true,
            ),
            verticalSpace(20),
            Text(
              'Our Mission: ',
              style: CustomTextStyles.font14BlackRegular(context),
            ),
            verticalSpace(8),
            Text(
              'To empower dental students with the tools, resources, and technology they need to excel in their studies and clinical practice ',
              style: CustomTextStyles.font14LightGrayRegular(context).copyWith(
                color: ColorsManager.lightGray
              ),
              textAlign: TextAlign.start,
              softWrap: true,
            ),
            verticalSpace(20),
            Text(
              'Our Vision: ',
              style: CustomTextStyles.font14BlackRegular(context),
            ),
            verticalSpace(8),
            Text(
              'To create a connected, innovative, and supportive community for dental students, making learning and practice more accessible and effective.',
              style: CustomTextStyles.font14LightGrayRegular(context).copyWith(
                color: ColorsManager.lightGray
              ),
              textAlign: TextAlign.start,
              softWrap: true,
            ),
            verticalSpace(20),
            Text(
              'Thank you for joining us on this journey filled with creativity and challenges.',
              style: CustomTextStyles.font14LightGrayRegular(context).copyWith(
                color: ColorsManager.lightGray
              ),
              textAlign: TextAlign.start,
              softWrap: true,
            ),
            verticalSpace(16),
            Text(
              '— The DentaLink Team',
              style: CustomTextStyles.font14MainBlueRegular(context),
            ),
          ],
        ),
      ),
    );
  }
}
