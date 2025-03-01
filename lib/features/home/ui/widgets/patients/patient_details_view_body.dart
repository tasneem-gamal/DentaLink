import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
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
          const PatientMainDetails()
        ],
      ),
    );
  }
}



