import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/widgets/general_custom_app_bar.dart';
import 'package:flutter/material.dart';

class AddPatientViewBody extends StatelessWidget {
  const AddPatientViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: SingleChildScrollView(
        child: Column(
          children: [
            GeneralCustomAppBar(
              title: 'Add Patient',
            )
          ],
        )
      ),
    );
  }
}

