import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/features/profile/ui/widgets/my_posts/tools/change_image.dart';
import 'package:dentalink/features/profile/ui/widgets/my_posts/tools/tool_text_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyPostsToolsViewBody extends StatelessWidget {
  const MyPostsToolsViewBody({super.key});

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
              'Tools',
              style: CustomTextStyles.font20BlackMedium(context),
            ),
            verticalSpace(16),
            Container(
              height: 180.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: ColorsManager.moreLightGray)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  children: [
                    const ChangeImage(),
                    horizontalSpace(15),
                    const ToolTextInfo()
                  ],
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}



