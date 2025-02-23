import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/widgets/custom_app_button.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:dentalink/features/home/ui/widgets/floating_action_button/category_drop_down_menu.dart';
import 'package:dentalink/features/home/ui/widgets/floating_action_button/description_form_field.dart';
import 'package:dentalink/features/home/ui/widgets/floating_action_button/gender_radio_buttons.dart';
import 'package:dentalink/features/home/ui/widgets/floating_action_button/phone_number_input_add_patient.dart';
import 'package:dentalink/features/home/ui/widgets/floating_action_button/upload_patient_images.dart';
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
            verticalSpace(20),
            const TitleOfTextField(title: 'Patient Name'),
            verticalSpace(12),
            CustomTextFormField(
              validator: (value){}, 
              hintText: 'Hassan'
            ),
            verticalSpace(16),
            const TitleOfTextField(title: 'Title'),
            verticalSpace(12),
            CustomTextFormField(
              validator: (value){}, 
              hintText: 'ex. Chipped tooth '
            ),
            verticalSpace(16),
            const TitleOfTextField(title: 'Age'),
            verticalSpace(12),
            CustomTextFormField(
              validator: (value){}, 
              hintText: '36'
            ),
            verticalSpace(16),
            const GenderRadioButtons(),
            verticalSpace(16),
            const TitleOfTextField(title: 'Phone Number'),
            verticalSpace(12),
            const PhoneNumberInputAddPatient(),
            verticalSpace(16),
            const TitleOfTextField(title: 'Category'),
            verticalSpace(12),
            const CategoryDropDownMenu(),
            verticalSpace(16),
            const TitleOfTextField(title: 'Location'),
            verticalSpace(12),
            CustomTextFormField(
              validator: (value){},
              hintText: 'Mansoura',
            ),
            verticalSpace(16),
            const DescriptionFormField(),
            verticalSpace(16),
            const UploadPatientImages(),
            verticalSpace(16),
            CustomAppButton(
              onPressed: (){},
              btnText: 'Add'
            )
          ],
        )
      ),
    );
  }
}







