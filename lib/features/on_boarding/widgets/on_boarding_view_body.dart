import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/features/on_boarding/logic/on_boarding_controller.dart';
import 'package:dentalink/features/on_boarding/widgets/on_boarding_next_button.dart';
import 'package:dentalink/features/on_boarding/widgets/on_boarding_smooth_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Stack(
      children: [
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: [
            Column(
              children: [
                Padding(
                  padding: Constants.onBoardingPadding,
                  child: Column(
                    children: [
                      Text(
                        'Struggling to find patients?\n We’ve got you covered!',
                        style: CustomTextStyles.font24BlackSemiBold,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 6,),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Turn your dental training into real-life success\n stories. with ',
                          style: CustomTextStyles.font14LightGrayRegular,
                          children: [
                            TextSpan(
                              text: 'DENTALINK',
                              style: CustomTextStyles.font14MainBlueRegular
                            )
                          ]
                        )
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    child: Image.asset('assets/images/onboarding_1.png'),
                  ),
                )
              ],
            )
          ],
        ),
        const OnBoardingSmoothIndicator(),
        const OnBoardingNextButton()
      ],
    );
  }
}

