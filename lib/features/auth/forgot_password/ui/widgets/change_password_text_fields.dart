import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ChangePasswordTextFields extends StatelessWidget {
  const ChangePasswordTextFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(8),
        Text(
          'New Password',
          style: CustomTextStyles.font14BlackRegular,
        ),
        verticalSpace(8),
        CustomTextFormField(
          validator: (validator){}, 
          hintText: '*****************'
        ),
        verticalSpace(12),
        Text(
          'Confirm New Password',
          style: CustomTextStyles.font14BlackRegular,
        ),
        verticalSpace(8),
        CustomTextFormField(
          validator: (validator){}, 
          hintText: '*****************'
        ),
      ],
    );
  }
}