import 'package:dentalink/core/widgets/general_custom_app_bar.dart';
import 'package:dentalink/features/home/ui/widgets/patients/patient_details_view_body.dart';
import 'package:flutter/material.dart';

class PatientDetailsView extends StatelessWidget {
  const PatientDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: GeneralCustomAppBar(title: 'Patient details'),
      body: PatientDetailsViewBody(),
    );
  }
}