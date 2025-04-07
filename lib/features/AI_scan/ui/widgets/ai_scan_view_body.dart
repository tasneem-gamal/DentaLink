import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/features/AI_scan/ui/widgets/intro_continue_container.dart';
import 'package:flutter/material.dart';

class AiScanViewBody extends StatelessWidget {
  const AiScanViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: Column(
        children: [
          verticalSpace(20),
          const IntroContinueContainer()
        ],
      ),
    );
  }
}

