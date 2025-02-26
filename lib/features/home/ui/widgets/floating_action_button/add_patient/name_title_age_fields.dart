import 'package:dentalink/core/helpers/app_regex.dart';
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
        CustomTextFormField(
          controller: TextEditingController(),
          keyboardType: TextInputType.name,
          validator: nameValidate, 
          hintText: 'Hassan'
        ),
        verticalSpace(16),
        const TitleOfTextField(title: 'Title'),
        verticalSpace(12),
        CustomTextFormField(
          controller: TextEditingController(),
          validator: titleValidate, 
          hintText: 'ex. Chipped tooth '
        ),
        verticalSpace(16),
        const TitleOfTextField(title: 'Age'),
        verticalSpace(12),
        CustomTextFormField(
          controller: TextEditingController(),
          validator: ageValidate, 
          hintText: '36'
        ),
      ],
    );
  }

  nameValidate(value) {
    if (value == null || value.isEmpty) {
      return 'Name cannot be empty';
    }
  }

  titleValidate(value) {
    if (value == null || value.isEmpty) {
      return 'Title cannot be empty';
    }
  }

  ageValidate(value) {
    if (value == null || value.isEmpty) {
      return 'Age cannot be empty';
    }
    if (!AppRegex.isAgeValid(value)) {
      return 'Enter a valid Age';
    }
  }
}
