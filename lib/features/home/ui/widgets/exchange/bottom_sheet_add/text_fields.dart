import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          validator: (value){},
          hintText: 'Your name',
        ),
        verticalSpace(12),
        CustomTextFormField(
          validator: (value){},
          hintText: 'Tooth name',
        ),
        verticalSpace(12),
        CustomTextFormField(
          validator: (value){},
          hintText: 'Exchange with',
        ),
        verticalSpace(12),
        CustomTextFormField(
          validator: (value){},
          hintText: 'Notes',
        ),
        verticalSpace(12),
        CustomTextFormField(
          validator: (value){},
          hintText: 'Phone number',
        ),
      ],
    );
  }
}