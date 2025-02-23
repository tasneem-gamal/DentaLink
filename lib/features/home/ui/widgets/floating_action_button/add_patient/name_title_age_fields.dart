import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:flutter/material.dart';

class NameTitleAgeFields extends StatelessWidget {
  const NameTitleAgeFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleOfTextField(title: 'Patient Name'),
        verticalSpace(12),
        CustomTextFormField(validator: (value) {}, hintText: 'Hassan'),
        verticalSpace(16),
        const TitleOfTextField(title: 'Title'),
        verticalSpace(12),
        CustomTextFormField(
            validator: (value) {}, hintText: 'ex. Chipped tooth '),
        verticalSpace(16),
        const TitleOfTextField(title: 'Age'),
        verticalSpace(12),
        CustomTextFormField(validator: (value) {}, hintText: '36'),
      ],
    );
  }
}
