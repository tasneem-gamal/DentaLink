import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/core/widgets/label_text_app.dart';
import 'package:flutter/material.dart';

class CaseDetailsSection extends StatelessWidget {
  const CaseDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Case details',
          style: CustomTextStyles.font16BlackMedium(context),
        ),
        verticalSpace(10),
        LabelTextApp(
          label: 'Case type: ', 
          text: 'Cavities',
          textStyleText: CustomTextStyles.font12MainBlueRegular(context),
        ),
        verticalSpace(10),
        const LabelTextApp(
          label: 'Category: ', 
          text: 'Endodontics',
        ),
        verticalSpace(10),
        const LabelTextApp(
          label: 'Case description: ', 
          text: 'Cavity in the back molar with intermittent pain Cavity in the back molar with intermittent pain',
        ),
        verticalSpace(10),
        const LabelTextApp(
          label: 'Date Added: ', 
          text: '20/10/2025',
        ),
      ],
    );
  }
}