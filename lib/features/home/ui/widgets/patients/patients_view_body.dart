import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/widgets/item_container_patient_tool.dart';
import 'package:flutter/material.dart';

class PatientsViewBody extends StatelessWidget {
  const PatientsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: Column(
        children: [
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.7,
              ),
              itemCount: 2,
              itemBuilder: (context, index) => const ItemContainerPatientTool(
                image: 'assets/images/patient.png', 
                imageWidth: 180,
                itemTitle: 'Dr. Mahmoud', 
                firstLabel: 'Location: ', 
                firstLabelText: 'Mansoura', 
                secondLabel: 'Title: ', 
                secondLabelText: 'Cavities'
              ),
              )
          )
        ],
      ),
    );
  }
}