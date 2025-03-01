import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/widgets/label_text_app.dart';
import 'package:dentalink/features/home/ui/widgets/patients/patient_avatar.dart';
import 'package:flutter/material.dart';

class PatientMainDetails extends StatelessWidget {
  const PatientMainDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const PatientAvatar(),
        horizontalSpace(12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LabelTextApp(
                label: 'Publisher: ', 
                text: 'Dr Osama', 
              ),
              verticalSpace(4),
              const LabelTextApp(
                label: 'patient name: ', 
                text: 'Salma Hussien', 
              ),
              verticalSpace(4),
              const LabelTextApp(
                label: 'Location: ', 
                text: 'Mansoura', 
              ),
              verticalSpace(4),
              const LabelTextApp(
                label: 'Age: ', 
                text: '65', 
              ),
              verticalSpace(4),
              const LabelTextApp(
                label: 'Gender: ', 
                text: 'Female', 
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.favorite_border)
        )
      ],
    );
  }
}