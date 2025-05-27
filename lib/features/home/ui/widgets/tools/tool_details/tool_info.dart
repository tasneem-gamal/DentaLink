import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/font_weight_helper.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/core/widgets/label_text_app.dart';
import 'package:dentalink/features/home/ui/widgets/tools/tool_details/publisher/publisher_info_section.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/tools_data.dart';

class ToolInfo extends StatelessWidget {
  final Tool tool;
  const ToolInfo({
    super.key,
    required this.tool,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              tool.name,
              style: CustomTextStyles.font20BlackMedium(context),
            ),
            Text(
              '${tool.price} LE',
              style: CustomTextStyles.font24BlackSemiBold(context).copyWith(
                color: ColorsManager.mainBlue,
                fontWeight: FontWeightHelper.regular,
              ),
            )
          ],
        ),
        verticalSpace(12),
        Text(
          tool.description,
          style: CustomTextStyles.font14LightGrayRegular(context),
          maxLines: 3,
        ),
        verticalSpace(8),
        LabelTextApp(label: 'Category: ', text: tool.category),
        const PublisherInfoSection()
      ],
    );
  }
}
