import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/core/widgets/custom_divider.dart';
import 'package:dentalink/core/widgets/label_text_app.dart';
import 'package:dentalink/features/home/ui/widgets/patients/patient_main_details.dart';
import 'package:flutter/material.dart';

class PatientDetailsViewBody extends StatelessWidget {
  const PatientDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: Column(
        children: [
          verticalSpace(20),
          const PatientMainDetails(),
          verticalSpace(26),
          const CustomDivider(),
          verticalSpace(12),
          Column(
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
            ],
          )
        ],
      ),
    );
  }
}





