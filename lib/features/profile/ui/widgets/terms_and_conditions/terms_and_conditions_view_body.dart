import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsViewBody extends StatelessWidget {
  const TermsAndConditionsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpace(20)
          ],
        )
      ),
    );
  }
}