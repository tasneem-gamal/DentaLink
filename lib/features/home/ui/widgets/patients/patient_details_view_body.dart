import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/widgets/custom_divider.dart';
import 'package:dentalink/features/home/ui/widgets/patients/case_details_section.dart';
import 'package:dentalink/features/home/ui/widgets/patients/contact_info_patient_details.dart';
import 'package:dentalink/features/home/ui/widgets/patients/patient_attachments_list.dart';
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
          const CaseDetailsSection(),
          verticalSpace(26),
          const CustomDivider(),
          verticalSpace(12),
          const PatientAttachmentsList(),
          verticalSpace(18),
          const CustomDivider(),
          verticalSpace(12),
          const ContactInfoPatientDetails()
        ],
      ),
    );
  }
}








