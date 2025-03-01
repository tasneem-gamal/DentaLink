import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/features/home/ui/widgets/patients/patients_grid_view.dart';
import 'package:flutter/material.dart';

class PatientsViewBody extends StatelessWidget {
  const PatientsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: const  Column(
        children: [
          PatientsGridView()
        ],
      ),
    );
  }
}

