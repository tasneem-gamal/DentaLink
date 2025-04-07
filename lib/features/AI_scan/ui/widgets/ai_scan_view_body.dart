import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/features/profile/ui/widgets/custom_text_rich.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AiScanViewBody extends StatelessWidget {
  const AiScanViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: Column(
        children: [
          verticalSpace(20),
          Container(
            height: 130.h,
            decoration: const BoxDecoration(
              color: ColorsManager.lightBlue
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/ai_icon.png'),
                      horizontalSpace(10),
                      const Expanded(
                        child: CustomTextRich(
                          firstTextSpan: 'Upload a photo, and the ', 
                          mainBlueText: 'chatbot ', 
                          text: 'will provide insights to assist you in diagnosis.'
                        ),
                      )
                    ],
                  ),
                  verticalSpace(12),
                  GestureDetector(
                    onTap: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Continue',
                          style: CustomTextStyles.font12BlackRegular(context),
                        ),
                        const Icon(Icons.arrow_forward_ios, size: 16, color: ColorsManager.lightGray,)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}