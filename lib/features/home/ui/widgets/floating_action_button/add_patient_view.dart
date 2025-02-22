import 'package:dentalink/features/home/ui/widgets/floating_action_button/add_patient_view_body.dart';
import 'package:flutter/material.dart';

class AddPatientView extends StatelessWidget {
  const AddPatientView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: AddPatientViewBody()),
    );
  }
}