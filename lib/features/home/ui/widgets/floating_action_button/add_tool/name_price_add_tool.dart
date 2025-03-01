import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:dentalink/core/widgets/title_of_text_field.dart';
import 'package:flutter/material.dart';

class NamePriceAddTool extends StatelessWidget {
  const NamePriceAddTool({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleOfTextField(title: 'Tool Name'),
        verticalSpace(12),
        CustomTextFormField(
          validator: (validator){}, 
          hintText: 'ex. Mouth Mirror'
        ),
        verticalSpace(16),
        const TitleOfTextField(title: 'Price'),
        verticalSpace(12),
        CustomTextFormField(
          validator: (validator){}, 
          hintText: 'ex. 200LE'
        ),
      ],
    );
  }
}