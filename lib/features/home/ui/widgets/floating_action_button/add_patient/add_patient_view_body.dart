import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/widgets/custom_app_button.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:dentalink/features/home/ui/widgets/floating_action_button/add_patient/category_and_location_fields.dart';
import 'package:dentalink/features/home/ui/widgets/floating_action_button/add_patient/description_form_field.dart';
import 'package:dentalink/features/home/ui/widgets/floating_action_button/add_patient/gender_radio_buttons.dart';
import 'package:dentalink/features/home/ui/widgets/floating_action_button/add_patient/name_title_age_fields.dart';
import 'package:dentalink/features/home/ui/widgets/floating_action_button/add_patient/phone_number_input_add_patient.dart';
import 'package:dentalink/features/home/ui/widgets/floating_action_button/add_patient/upload_patient_images.dart';
import 'package:flutter/material.dart';

class AddPatientViewBody extends StatelessWidget {
  const AddPatientViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              verticalSpace(20),
              const NameTitleAgeFields(),
              verticalSpace(16),
              const GenderRadioButtons(),
              verticalSpace(16),
              const TitleOfTextField(title: 'Phone Number'),
              verticalSpace(12),
              const PhoneNumberInputAddPatient(),
              verticalSpace(16),
              const CategoryAndLocationFields(),
              const DescriptionFormField(),
              verticalSpace(16),
              const UploadPatientImages(),
              verticalSpace(16),
              CustomAppButton(
                onPressed: (){},
                btnText: 'Add'
              )
            ],
          ),
        )
      ),
    );
  }
}










